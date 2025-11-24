def init_controllers(app):
    from controllers import site_controller
    site_controller.setup_routes(app)