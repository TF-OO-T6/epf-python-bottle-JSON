from bottle import template, request, static_file
from controllers.base_controller import BaseController
from services.evento_service import EventoService
from services.museu_service import MuseuService
from services.gastronomia_service import GastronomiaService
from services.local_service import LocalService 

class SiteController(BaseController):
    def setup_routes(self):
        evento_service = EventoService()
        museu_service = MuseuService()
        gastro_service = GastronomiaService()
        local_service = LocalService()
        
        @self.bottle.get('/')
        @self.bottle.get('/portal')
        def index():
            user = request.get_cookie("user_session", secret='segredo')
            
            lista_locais = local_service.get_all()
            
            return template('views/home', user=user, locais=lista_locais)

        @self.bottle.get('/eventos')
        def pagina_eventos():
            user = request.get_cookie("user_session", secret='segredo')
            lista_eventos = evento_service.get_all() 
            return template('views/eventos', user=user, eventos=lista_eventos)

        @self.bottle.get('/museus')
        def pagina_museus():
            user = request.get_cookie("user_session", secret='segredo')
            lista_museus = museu_service.get_all()
            return template('views/museus', user=user, museus=lista_museus)

        @self.bottle.get('/gastronomia')
        @self.bottle.get('/locais') 
        def pagina_gastronomia():
            user = request.get_cookie("user_session", secret='segredo')
            lista_gastro = gastro_service.get_all()
            return template('views/gastronomia', user=user, restaurantes=lista_gastro)

        @self.bottle.get('/mapa')
        def pagina_mapas():
            user = request.get_cookie("user_session", secret='segredo')
            return template('views/mapa', user=user)