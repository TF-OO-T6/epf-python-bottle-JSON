# --- ARQUIVO: app.py ---
from bottle import Bottle
from config import Config
from controllers import init_controllers

class App:
    def __init__(self):
        self.bottle = Bottle()
        self.config = Config()

    def setup_routes(self):
        # Chama o arquivo que liga as rotas
        init_controllers(self.bottle)

    def run(self):
        self.setup_routes()
        print("✅ Rotas configuradas. Iniciando na porta 9000...")
        
        # FORÇANDO PORTA 9000 E HOST LOCALHOST
        self.bottle.run(
            host='localhost',
            port=9000, 
            debug=True, 
            reloader=True
        )