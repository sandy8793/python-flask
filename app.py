from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/count_files')
def count_files():
    directory_path = os.environ.get('DIRECTORY_PATH', '/shared_directory')
    file_count = len(os.listdir(directory_path))
    return jsonify({"file_count": file_count})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
