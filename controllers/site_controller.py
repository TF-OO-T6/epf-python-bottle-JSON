from bottle import get, template

@get('/')
def home():
    return template('home')

@get('/locais')
def locais():
    return template('locais')

@get('/eventos')
def eventos():
    return template('eventos')

@get('/mapa')
def mapa():
    return template('mapa')

@get('/local/<local_id>')
def detalhes(local_id):
    return template('detalhes_local')