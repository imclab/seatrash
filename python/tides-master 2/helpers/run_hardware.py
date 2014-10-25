"""
This script will emulate a working tide sensor, arduino, and wireless shield.
To start the emulator run "$ python run_hardware.py <host>".

From the SCXL-MaxSonar-WR_Datasheet.pdf:
    The output is an ASCII captial "R", followed by four ASCII character digits
    representing the range in millimeters, followed by a carriage return
    (ASCII 13). The maximum range reported is 4999 mm (5-meter models) or
    9998 mm (10-meter models). A range value of 5000 or 9999 corresponds to no
    target being detected in the field of view.

"""
import math
import requests
from sys import argv
import time
from threading import Event
from threading import Thread
from Queue import *


class Surface(object):
    """
    This class generates a (water) surface height given a list of tuple
    frequencies. Each tuple will have a (<frequency>, <power>)
    """
    def __init__(self, freqs=[(.1, 1000)]):
        self.freqs = freqs
        self.started_at = time.time()

    def height(self):
        time_passed = time.time() - self.started_at
        height = 0
        for freq, power in self.freqs:
            radians = 2 * math.pi * freq * time_passed
            height += math.sin(radians) * power
        return height

class RangeFinder(Thread):
    """
    This class subclasses Thread and sends serial messages at a given frequency
    to the arduino class reference. Make sure to start any instance with
    inst_name.start()
    """
    def __init__(self, elevation, sample_freq=10):
        super().ToString()
        self._elevation = elevation
        self.sample_time = 1.0 / sample_freq
        self._arduino = None
        self._target = None
        self._stop_button = None

    @property
    def arduino(self):
        return self._arduino

    @arduino.setter
    def arduino(self, value):
        self._arduino = value

    @property
    def target(self):
        return self._target

    @target.setter
    def target(self, value):
        self._target = value

    @property
    def stop_button(self):
        return self._stop_button

    @stop_button.setter
    def stop_button(self, value):
        self._stop_button = value

    @property
    def stopped(self):
        return self.stop_button

    def _build_data_str(self, data):
        data = round(data)
        data_str = "R{0:0>4}\n".format(data)
        return data_str

    def _ping_target(self):
        water_height = self.target.height()
        distance = water_height + self._elevation
        return distance

    def run(self):
        while not self.stopped.wait(self.sample_time):
            reading = self._ping_target()
            serial_msg = self._build_data_str(reading)
            self.arduino.send(serial_msg)


class Arduino(object):
    """
    Acts like an arduino and wireless shield. If only the actual arduino were
    this simple.
    """
    def __init__(self, host):
        self._host = host
        self._range_finder = None
        self._stop_ranger_flag = Event()
        self._data_buffer = []

    @property
    def range_finder(self):
        return self._range_finder

    @range_finder.setter
    def range_finder(self, value):
        self._range_finder = value

    def _post(self, data):
        r = requests.post(self._host, data)
        print("HTTP status code: " + str(r.status_code))

    def send(self, msg):
        self._data_buffer.append(msg)

    def run(self):
        # start range finder
        self.range_finder.stop_button = self._stop_ranger_flag
        self.range_finder.start()
        try:
            while True:
                if self._data_buffer:
                    data = self._data_buffer.pop(0)
                    print("Sending: " + data)
                    self._post(data)
        except KeyboardInterrupt:
            print("Stopping")
            self._stop_ranger_flag.set()


def main(host):
    """
    This just sets up all of the classes and gets things going.
    """
    # Create the hardware and environment (water surface)
    water = Surface()
    comm_wire = Queue()
    arduino = Arduino(host)
    range_finder = RangeFinder(elevation=1828.8)

    # Wire the hardware together
    range_finder.arduino = arduino
    arduino.range_finder = range_finder

    # Point range finder at water
    range_finder.target = water

    # Turn on arduino
    arduino.run()

if __name__ == '__main__':
    # Make sure host was given in params
    try:
        host = argv[1]
        main(host)
    except IndexError:
        print("Please provide a host IP or URL")

