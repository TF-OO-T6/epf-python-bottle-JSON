from bottle import template
from controllers.base_controller import BaseController
from services.local_service import LocalService

class SiteController(BaseController):
    def __init__(self, app):
        self.bottle = app
        self.service = LocalService()

    def index(self):
        dados_locais = self.service.get_all()
        return template('views/home', locais=dados_locais)

    # --- MUDANÇA AQUI: Retornar apenas texto para teste ---
    def pagina_mapas(self):
        return "FUNCIONOU: PÁGINA DE MAPAS"

    def pagina_gastronomia(self):
        return "FUNCIONOU: PÁGINA DE GASTRONOMIA"

    def pagina_eventos(self):
        return "FUNCIONOU: PÁGINA DE EVENTOS"

    def pagina_museus(self):
        return "FUNCIONOU: PÁGINA DE MUSEUS"

    def setup_routes(self):
        print("🔗 Configurando rotas...")
        self.bottle.route('/portal', method='GET', callback=self.index)
        self.bottle.route('/', method='GET', callback=self.index)
        
        # Rotas dos botões
        self.bottle.route('/mapas', method='GET', callback=self.pagina_mapas)
        self.bottle.route('/gastronomia', method='GET', callback=self.pagina_gastronomia)
        self.bottle.route('/eventos', method='GET', callback=self.pagina_eventos)
        self.bottle.route('/museus', method='GET', callback=self.pagina_museus)