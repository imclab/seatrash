class MyHandler(SimpleHTTPRequestHandler):
  def do_POST(self):
    if self.path == '/arduino':
      form = cgi.FieldStorage(fp=self.rfile, headers=self.headers,
        environ={'REQUEST_METHOD':'POST'})
      code = form['code'].value
      arduino.write(code)
      self.send_response(200)
      self.send_header('Content-type', 'text/html')
      return
    return self.do_GET()

arduino = serial.Serial('/dev/ttyUSB0', 9600, timeout=2)
server = HTTPServer(('', 8080), MyHandler).serve_forever()
