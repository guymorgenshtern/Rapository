import logging
import generator

from flask import Flask, render_template


app = Flask(__name__)


@app.route('/')
def index():
    return render_template("Home.html")

@app.route('/gen')
def hello():
    """Return a friendly HTTP greeting."""
    return generator.create()


@app.errorhandler(500)
def server_error(e):
    logging.exception('An error occurred during a request.')
    return """
    An internal error occurred: <pre>{}</pre>
    See logs for full stacktrace.
    """.format(e), 500


if __name__ == '__main__':
    # This is used when running locally. Gunicorn is used to run the
    # application on Google App Engine. See entrypoint in app.yaml.
    app.run(host='127.0.0.1', port=8080, debug=True)