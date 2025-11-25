from bottle import static_file
from controllers.base_controller import BaseController

class StaticController(BaseController):
    def __init__(self, app):
        self.bottle = app
        try:
            super().__init__(app)
        except TypeError:
            super().__init__()

    def serve_static(self, filepath):
        return static_file(filepath, root='./static')

    def setup_routes(self):
        self.bottle.route('/static/<filepath:path>', method='GET', callback=self.serve_static)