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

    def ver_detalhes(self, tipo, id_item):
        item = None
        nome_tipo = ""

        if tipo == 'locais':
            item = self.service.get_by_id(id_item)
            nome_tipo = "Ponto Turístico"
        elif tipo == 'gastronomia':
            item = self.gastro_service.get_by_id(id_item)
            nome_tipo = "Gastronomia"
        elif tipo == 'museus':
            item = self.museu_service.get_by_id(id_item)
            nome_tipo = "Museu"
        elif tipo == 'eventos':
            item = self.evento_service.get_by_id(id_item)
            nome_tipo = "Evento"

        if item:
            return template('views/detalhes', item=item, categoria_nome=nome_tipo)
        else:
            return template('views/generico', titulo="Erro", mensagem="Item não encontrado!")

    def setup_routes(self):
        self.bottle.route('/portal', method='GET', callback=self.index)
        self.bottle.route('/', method='GET', callback=self.index)
        
        self.bottle.route('/mapas', method='GET', callback=self.pagina_mapas)
        self.bottle.route('/gastronomia', method='GET', callback=self.pagina_gastronomia)
        self.bottle.route('/eventos', method='GET', callback=self.pagina_eventos)
        self.bottle.route('/museus', method='GET', callback=self.pagina_museus)

        self.bottle.route('/detalhes/<tipo>/<id_item>', method='GET', callback=self.ver_detalhes)