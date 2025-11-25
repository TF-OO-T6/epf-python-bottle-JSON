# ARQUIVO: controllers/site_controller.py
from bottle import template
from services.local_service import LocalService

class SiteController:
    def __init__(self, app):
        self.bottle = app
        self.service = LocalService()

    def index(self):
        dados_locais = self.service.get_all()
        return template('views/home', locais=dados_locais)

    def setup_routes(self):
        self.bottle.route('/', method='GET', callback=self.index)
        
        self.bottle.route('/users', method='GET', callback=self.index)