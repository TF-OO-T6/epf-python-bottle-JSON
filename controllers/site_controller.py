from bottle import template

def setup_routes(app):
    
    @app.get('/')
    def home():
        return template('home')

    @app.get('/locais')
    def locais():
        return template('locais')

    @app.get('/eventos')
    def eventos():
        return template('eventos')

    @app.get('/mapa')
    def mapa():
        return template('mapa')

    @app.get('/local/<local_id>')
    def detalhes(local_id):
        return template('detalhes_local')