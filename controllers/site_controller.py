from bottle import template
from controllers.base_controller import BaseController
from services.local_service import LocalService
from services.gastronomia_service import GastronomiaService
from services.museu_service import MuseuService
from services.evento_service import EventoService

class SiteController(BaseController):
    def __init__(self, app):
        self.bottle = app
        self.service = LocalService()
        self.gastro_service = GastronomiaService()
        self.museu_service = MuseuService()
        self.evento_service = EventoService()

    def index(self):
        dados_locais = self.service.get_all()
        return template('views/home', locais=dados_locais)

    def pagina_gastronomia(self):
        dados_restaurantes = self.gastro_service.get_all()
        return template('views/gastronomia', restaurantes=dados_restaurantes)

    def pagina_museus(self):
        dados_museus = self.museu_service.get_all()
        return template('views/museus', museus=dados_museus)

    def pagina_eventos(self):
        dados_eventos = self.evento_service.get_all()
        return template('views/eventos', eventos=dados_eventos)

    def pagina_mapas(self):
        return template('views/generico', titulo="Mapas", mensagem="Em breve.")

    def setup_routes(self):
        self.bottle.route('/portal', method='GET', callback=self.index)
        self.bottle.route('/', method='GET', callback=self.index)
        
        self.bottle.route('/mapas', method='GET', callback=self.pagina_mapas)
        self.bottle.route('/gastronomia', method='GET', callback=self.pagina_gastronomia)
        self.bottle.route('/eventos', method='GET', callback=self.pagina_eventos)
        self.bottle.route('/museus', method='GET', callback=self.pagina_museus)