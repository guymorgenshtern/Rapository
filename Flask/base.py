import logging
import generator
import merger

from flask import Flask, render_template, request


app = Flask(__name__)


@app.route('/')
def index():
    return render_template("Home.html")

@app.route('/gen')
def generation():
    """Return a friendly HTTP 'greeting'."""
    return render_template("generation.html", full_song=generator.create())

@app.route('/gen', methods=['GET', 'POST'])
def generation_plus():
    new_text = generator.create(int(request.form['chorus']), int(request.form['chorus_length']), int(request.form['verse_length']))
    return render_template("generation.html", full_song=new_text)

@app.route('/add')
def adder():
    return render_template("form.html")


@app.route('/add', methods=['GET', 'POST'])
def adder_inter():
    text = request.form['lyrics']
    file = open("data.txt", "w")
    file.write(text)
    file.close()
    merger.merge()
    return "Added lyrics!"

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