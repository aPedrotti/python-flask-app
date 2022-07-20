from flask_bootstrap import Bootstrap

app = Flask(__name__)

app.config['TITLE'] = 'Pydaria'
Bootstrap(app)

from app import views
