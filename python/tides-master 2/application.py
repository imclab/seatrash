from flask import Flask
from flask import render_template
from flask import request
from helpers.coops_api import get_tide_data

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        return 'Got it, thanks'
    else:
        data = get_tide_data()
        context = {
            'data': data,
        }
        return render_template('graph.html', **context)

if __name__ == '__main__':
    app.debug = True
    app.run()
