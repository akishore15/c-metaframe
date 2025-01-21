from flask import Flask, request, jsonify
from googlesearch import search

app = Flask(__name__)

@app.route('/search')
def search_query():
    query = request.args.get('q')
    results = [{"title": j, "link": j} for j in search(query, num_results=10)]
    return jsonify(results)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
