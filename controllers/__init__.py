# controllers/__init__.py
from controllers.site_controller import SiteController
from controllers.static_controller import StaticController
from controllers.login_controller import LoginController

def init_controllers(app):
    print("🚦 Inicializando Controladores...")
    
    site = SiteController(app)
    site.setup_routes()
    print("✅ SiteController carregado!")

    login = LoginController(app)
    login.setup_routes()
    print("✅ LoginController carregado!")

    static = StaticController(app)
    static.setup_routes()
    print("✅ StaticController carregado!")