import json
import sqlite3

from flask import Flask, abort, jsonify, make_response, request

import utils

app = Flask(__name__)

@app.errorhandler(400)
def invalid_request(error):
    return make_response(jsonify({'error': 'Bad Request'}), 400)

@app.route("/api/post/<string:post_id>", methods=['GET'])
def get_posts(post_id):
    connection = utils.get_connection()
    cursor = connection.cursor()
    SQL_STRING = 'SELECT * FROM posts WHERE post_id = ' + str(post_id)
    cursor.execute(SQL_STRING)
    post = cursor.fetchall()
    return jsonify(post)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=False)