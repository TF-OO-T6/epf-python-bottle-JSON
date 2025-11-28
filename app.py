# ARQUIVO: app.py
from bottle import Bottle
from controllers import init_controllers

class App:
    def __init__(self):
        self.bottle = Bottle()
        

    def setup_routes(self):
        init_controllers(self.bottle)

    def run(self):
        self.setup_routes()
        print("✅ Servidor limpo iniciando na porta 9000...")
        
        self.bottle.run(
            host='localhost',
            port=9000, 
            debug=True, 
            reloader=True
        )
            