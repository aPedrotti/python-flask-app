from app import app

@app.route('/')
def home():
    return "Hello World, we have Flask in a Docker container!!"