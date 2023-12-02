from flask import Flask, request
from app_config import app


@app.route('/')
def index():
    return 'Hello'


@app.route('/v1/search/nearby', methods=["GET"])
def search_radius():
    radius = request.args.get('radius')
    longitude = request.args.get('longitude')
    latitude = request.args.get('latitude')


@app.route('/v1/business/<id>', methods=["GET"])
def search_radius(id):
    radius = request.args.get('id')


@app.route('/v1/businesses', methods=["POST"])
def search_radius():
    radius = request.args.get('id')


@app.route('/v1/business/<id>', methods=["PUT"])
def search_radius(id):
    radius = request.args.get('id')


@app.route('/v1/business/<id>', methods=["DELETE"])
def search_radius(id):
    radius = request.args.get('id')



