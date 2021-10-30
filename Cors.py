# Simpel usage of Flask

from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route("/")
def helloWorld():
  return "Hello, cross-origin-world!"

# Resource specific CORS

app = Flask(__name__)
cors = CORS(app, resources={r"/api/*": {"origins": "*"}})

@app.route("/api/v1/users")
def list_users():
  return "user example"

  # Route specific CORS via decorator
  @app.route("/")
@cross_origin()
def helloWorld():
  return "Hello, cross-origin-world!"

  # Troubleshooting
  logging.getLogger('flask_cors').level = logging.DEBUG