![alt text](https://github.com/nickitaliano/mcl-mh-brand-sentiment-analysis-app/blob/master/MooTweet.jpg?raw=true)

#MooTweet:mh-mcl-brand-sentiment-app🎹

"Mootweet"-- a Twitter analytical web dashboard app for Music Information Retrieval(MIR) researchers, musicians or engineers-- was developed to see if realtime streaming analytics could make a difference via data science music hacking!

The main dashboard streams data via [Twitter's Search API](https://en.wikipedia.org/wiki/Dashboard_(business)) and features were written in Dash(Python Web App Framework). The app envoroments can be deployed locally(Unix) and remotly(Heroku), and users can monitor exploratory analyses and NLP(Natural Language Processing) insights!

## How to use it
# Download and install the Heroku CLI

```'bash'
$ # If you haven't already, log in to your Heroku account and follow the prompts to create a new SSH public key.
$ heroku login

```bash
$ # Create a new Git repository
$ # Initialize a git repository in a new or existing directory
$ cd my-project/
$ git init
$ heroku git:remote -a myapp
$ # Deploy your application
$ # Commit your code to the repository and deploy it to Heroku using Git.

```bash
$ git add .
$ git commit -am "make it better"
$ git push heroku master

Existing Git repository
For existing repositories, simply add the heroku remote

```bash
$ heroku git:remote -a apitzer

## Get the code
```bash
git clone https://github.com/nickitaliano/mir-flask-app.git
cd mir-flask-app
```

```bash
$ # Virtualenv modules installation (Unix based systems)
$ virtualenv --no-site-packages env
$ source env/bin/activate
```

```bash
$ # Virtualenv modules installation (Windows based systems)
$ # virtualenv --no-site-packages env
$ # .\env\Scripts\activate
```
```bash
$ # Install modules - SQLite Database
$ pip3 install -r requirements.txt
```

```bash
$ # OR with PostgreSQL connector
$ # pip install -r requirements-pgsql.txt
```

```bash
$ # Set the FLASK_APP environment variable(development only)
$ (Unix/Mac) export FLASK_APP=run.py
$ (Windows) set FLASK_APP=run.py
$ (Powershell) $env:FLASK_APP = ".\run.py"
```
```bash
$ # Set up the DEBUG environment
$ # (Unix/Mac) export FLASK_ENV=development
$ # (Windows) set FLASK_ENV=development
$ (Powershell) $env:FLASK_ENV = "development"
```

```bash
$ # Start the application (development mode)
$ # --host=0.0.0.0 - expose the app on all network interfaces (default 127.0.0.1)
$ # --port=5000    - specify the app port (default 5000)  
 flask run --host=0.0.0.0 --port=5000
```

```bash
 # Access the dashboard in browser: http://127.0.0.1:5000/
```

<br/>

## Deployment

The 2 module app-- sharing a single Postgres database-- is provided with a basic configuration to be executed in [Gunicorn](https://gunicorn.org/).

<br/>

## [Heroku](https:/heroku.com).The application can be easily executed in a heroku remote git branch/master. The steps:

> Get the code

```bash
$ git clone https://github.com/nickitaliano/mir-flask-app.git
$ cd mir-flask-app
```

> Create the app in Heroku

```bash
Visit `http://localhost:5005` in your browser. The app should be up & running. 
```

<br/>

### [Gunicorn](https://gunicorn.org/)
---

Gunicorn 'Green Unicorn' is a Python WSGI HTTP Server for UNIX.

> Install using pip

```bash
$ pip install gunicorn
```
> Start the app using gunicorn binary

```bash
$ gunicorn --bind 0.0.0.0:8001 run:app
Serving on http://localhost:8001
```

Visit `http://localhost:8001` in your browser. The app should be up & running.

<br/>

## Credits & Links

<br/>

### What is [Flask](https://www.palletsprojects.com/p/flask/)

[Flask](https://www.palletsprojects.com/p/flask/) is a lightweight WSGI web application framework. It is designed to make getting started quick and easy, with the ability to scale up to complex applications. It began as a simple wrapper around Werkzeug and Jinja and has become one of the most popular Python web application frameworks.

<br/>

### [What is a dashboard](https://en.wikipedia.org/wiki/Dashboard_(business))

A dashboard is a set of pages that are easy to read and offer information to the user in real-time regarding his business. A dashboard usually consists of graphical representations of the current status and trends within an organization. Having a well-designed dashboard will give you the possibility to act and make informed decisions based on the data that your business provides - *definition provided by [Creative-Tim - Free Dashboard Templates](https://www.creative-tim.com/blog/web-design/free-dashboard-templates/?ref=appseed)*.

<br/>

**[Ackknowledgements]

**[Chulong-Li](https://github.com/Chulong-Li/Real-time-Sentiment-Tracking-on-Twitter-for-Brand-Improvement-and-Trend-Recognition)**, a Data Scientist out of Ohio State, created an amazing real-time interactive web app; based on data pipelines using streaming Twitter data, automated sentiment analysis and MySQL&PostgreSQL database (Deployed on Heroku). **[As author on Medium](https://medium.com/@ChulongLi)** he outlined a complimentary project overview, plus tutorial, to get you "zero-to-dash-hero"👍

<br/>
