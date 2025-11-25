from bottle import template
from controllers.base_controller import BaseController
from services.local_service import LocalService

class SiteController(BaseController):
    def __init__(self, app):
        self.bottle = app
        # --- ATENÇÃO: COMENTEI O SUPER() PARA EVITAR QUE O PAI ATRAPALHE ---
        # try:
        #     super().__init__(app)
        # except:
        #     pass
        # -------------------------------------------------------------------
        self.service = LocalService()

    def index(self):
        dados_locais = self.service.get_all()
        return template('views/home', locais=dados_locais)

    def setup_routes(self):
        # MUDAMOS AQUI: De '/' para '/portal'
        print("🔗 Rota /portal configurada!") 
        self.bottle.route('/portal', method='GET', callback=self.index)