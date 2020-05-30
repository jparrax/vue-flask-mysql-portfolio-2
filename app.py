from flask import Flask, jsonify
from flask_cors import CORS
from flask_mysqldb import MySQL

# configuration
DEBUG = True

# instantiate the app
app = Flask(__name__)
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_DB'] = 'portfolio'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
app.config.from_object(__name__)

mysql = MySQL(app)
# enable CORS
CORS(app, resources={r'/*': {'origins': '*'}})

# sanity check route
@app.route('/header', methods=['GET'])
def header():
    cur = mysql.connection.cursor()
    cur.execute('''
    SELECT contents.id, users.user_name, pages.page, pages.route, contents.component_number, components.component
    FROM (((contents
    INNER JOIN users on contents.id_user = users.id)
    INNER JOIN pages on contents.id_page = pages.id)
    INNER JOIN components on contents.id_component = components.id)
    WHERE components.component = "header";
    ''') 
    rows = cur.fetchall()
    return jsonify(rows)

# sanity check route
@app.route('/home', methods=['GET'])
def home():
    cur = mysql.connection.cursor()
    cur.execute('''
    SELECT contents.id, users.user_name, pages.page, contents.component_number, components.component, paragraphs.paragraph
    FROM ((((contents
    INNER JOIN users on contents.id_user = users.id)
    INNER JOIN pages on contents.id_page = pages.id)
    INNER JOIN components on contents.id_component = components.id)
    INNER JOIN paragraphs on contents.id_paragraph = paragraphs.id)
    WHERE pages.page = "home";
    ''') 
    rows = cur.fetchall()
    return jsonify(rows)

@app.route('/experience', methods=['GET'])
def experience():
    cur = mysql.connection.cursor()
    cur.execute('''
    SELECT contents.id, users.user_name, pages.page, contents.component_number, components.component, paragraphs.paragraph
    FROM ((((contents
    INNER JOIN users on contents.id_user = users.id)
    INNER JOIN pages on contents.id_page = pages.id)
    INNER JOIN components on contents.id_component = components.id)
    INNER JOIN paragraphs on contents.id_paragraph = paragraphs.id)
    WHERE pages.page = "Experience";
    ''') 
    rows = cur.fetchall()
    return jsonify(rows)

@app.route('/skills', methods=['GET'])
def skills():
    cur = mysql.connection.cursor()
    cur.execute('''
    SELECT contents.id, users.user_name, pages.page, contents.component_number, components.component, paragraphs.paragraph
    FROM ((((contents
    INNER JOIN users on contents.id_user = users.id)
    INNER JOIN pages on contents.id_page = pages.id)
    INNER JOIN components on contents.id_component = components.id)
    INNER JOIN paragraphs on contents.id_paragraph = paragraphs.id)
    WHERE pages.page = "Skills"
    ''') 
    rows = cur.fetchall()
    return jsonify(rows)

if __name__ == '__main__':
    app.run()