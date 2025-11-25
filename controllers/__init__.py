# controllers/__init__.py
from controllers.site_controller import SiteController
from controllers.static_controller import StaticController

def init_controllers(app):
    print("🚦 Inicializando Controladores...")
    
    # 1. Inicia o Site (Home)
    site = SiteController(app)
    site.setup_routes()
    print("✅ SiteController carregado!")

    # 2. Inicia os Estáticos (CSS)
    static = StaticController(app)
    static.setup_routes()
    print("✅ StaticController carregado!")