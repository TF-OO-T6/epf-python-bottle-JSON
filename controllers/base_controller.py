# controllers/base_controller.py

class BaseController:
    def __init__(self, app=None):
        self.bottle = app

    def setup_routes(self):
        pass  