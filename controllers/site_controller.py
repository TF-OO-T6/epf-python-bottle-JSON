from bottle import template
from controllers.base_controller import BaseController
from services.local_service import LocalService
# --- IMPORTANTE: Importar o serviço novo ---
from services.gastronomia_service import GastronomiaService

class SiteController(BaseController):
    def __init__(self, app):
        self.bottle = app
        self.service = LocalService()
        # --- Inicializa o serviço de gastronomia ---
        self.gastro_service = GastronomiaService()

    def index(self):
        dados_locais = self.service.get_all()
        return template('views/home', locais=dados_locais)

    # --- AQUI ESTÁ A MUDANÇA: Usar o template em vez de texto ---
    def pagina_gastronomia(self):
        # Pega os dados do JSON
        dados_restaurantes = self.gastro_service.get_all()
        # Envia para o HTML novo (gastronomia.tpl)
        return template('views/gastronomia', restaurantes=dados_restaurantes)

    # --- Páginas ainda em construção (Texto genérico) ---
    def pagina_mapas(self):
        return template('views/generico', titulo="Mapas", mensagem="Em breve.")

    def pagina_eventos(self):
        return template('views/generico', titulo="Eventos", mensagem="Em breve.")

    def pagina_museus(self):
        return template('views/generico', titulo="Museus", mensagem="Em breve.")

    def setup_routes(self):
        # Rotas Principais
        self.bottle.route('/portal', method='GET', callback=self.index)
        self.bottle.route('/', method='GET', callback=self.index)
        
        # Rotas do Menu
        self.bottle.route('/mapas', method='GET', callback=self.pagina_mapas)
        self.bottle.route('/gastronomia', method='GET', callback=self.pagina_gastronomia)
        self.bottle.route('/eventos', method='GET', callback=self.pagina_eventos)
        self.bottle.route('/museus', method='GET', callback=self.pagina_museus)