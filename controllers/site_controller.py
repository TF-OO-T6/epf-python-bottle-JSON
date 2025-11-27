from bottle import template, request

class SiteController:
    def __init__(self, app):
        self.app = app

    def setup_routes(self):
        
        @self.app.get('/')
        @self.app.get('/portal')
        def index():
            user_logado = request.get_cookie("user_session", secret='segredo')
            
            locais_falsos = [
                {'nome': 'Museu Nacional', 'imagem': '', 'nota': '4.8', 'categoria': 'Museu', 'status': 'Aberto'},
                {'nome': 'Cine Brasília', 'imagem': '', 'nota': '4.5', 'categoria': 'Cinema', 'status': 'Fechado'}
            ]
            
            return template('home', user=user_logado, locais=locais_falsos)

        @self.app.get('/locais')
        @self.app.get('/gastronomia')
        def pagina_locais():
            user_logado = request.get_cookie("user_session", secret='segredo')
            return template('locais', user=user_logado, locais=[])

        @self.app.get('/eventos')
        def pagina_eventos():
            user_logado = request.get_cookie("user_session", secret='segredo')
            return template('eventos', user=user_logado, eventos=[])

        @self.app.get('/mapa')
        @self.app.get('/mapas')
        def pagina_mapas():
            user_logado = request.get_cookie("user_session", secret='segredo')
            return template('mapa', user=user_logado, titulo="Mapas")
        
        @self.app.get('/museus')
        def pagina_museus():
            user_logado = request.get_cookie("user_session", secret='segredo')
            return template('museus', user=user_logado, museus=[])