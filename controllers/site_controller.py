from bottle import template
from controllers.base_controller import BaseController
from services.local_service import LocalService
from services.gastronomia_service import GastronomiaService
from services.museu_service import MuseuService
from services.evento_service import EventoService
from datetime import datetime

class SiteController(BaseController):
    def __init__(self, app):
        self.bottle = app
        self.service = LocalService()
        self.gastro_service = GastronomiaService()
        self.museu_service = MuseuService()
        self.evento_service = EventoService()

    def esta_aberto(self, horario_str):
        try:
            agora = datetime.now().time()
            inicio_str, fim_str = horario_str.split(' - ')
            inicio = datetime.strptime(inicio_str, '%H:%M').time()
            fim = datetime.strptime(fim_str, '%H:%M').time()
            
            if inicio < fim:
                return inicio <= agora <= fim
            else:
                return agora >= inicio or agora <= fim
        except:
            return False

    def index(self):
        dados_locais = self.service.get_all()
        return template('views/home', locais=dados_locais)

    def pagina_gastronomia(self):
        dados_restaurantes = self.gastro_service.get_all()
        return template('views/gastronomia', restaurantes=dados_restaurantes)

    def pagina_gastronomia_abertos(self):
        todos = self.gastro_service.get_all()
        abertos = []
        for r in todos:
            if self.esta_aberto(r.horario):
                abertos.append(r)
        return template('views/gastronomia', restaurantes=abertos)

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
            return "Item não encontrado!"

    def setup_routes(self):
        self.bottle.route('/portal', method='GET', callback=self.index)
        self.bottle.route('/', method='GET', callback=self.index)
        
        self.bottle.route('/mapas', method='GET', callback=self.pagina_mapas)
        self.bottle.route('/gastronomia', method='GET', callback=self.pagina_gastronomia)
        self.bottle.route('/gastronomia/abertos', method='GET', callback=self.pagina_gastronomia_abertos)
        self.bottle.route('/eventos', method='GET', callback=self.pagina_eventos)
        self.bottle.route('/museus', method='GET', callback=self.pagina_museus)
        
        self.bottle.route('/detalhes/<tipo>/<id_item>', method='GET', callback=self.ver_detalhes)