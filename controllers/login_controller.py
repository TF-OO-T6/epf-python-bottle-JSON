from bottle import get, post, request, response, redirect, template
from controllers.base_controller import BaseController
from services.user_service import UserService

class LoginController(BaseController):
    def setup_routes(self):
        service = UserService()

        @self.bottle.get('/login')
        def login_view():
            return template('auth', error=None, user=None)

        @self.bottle.post('/login')
        def login_action():
            email = request.forms.get('email')
            password = request.forms.get('password')
            
            username = service.authenticate(email, password)
            
            if username:
                response.set_cookie("user_session", username, secret='segredo', path='/')
                return redirect('/')
            else:
                return template('auth', error="Email ou senha incorretos", user=None)

        @self.bottle.get('/cadastro')
        def register_view():
            return template('auth', error=None, user=None)

        @self.bottle.post('/cadastro')
        def register_action():
            name = request.forms.get('name')
            email = request.forms.get('email')
            password = request.forms.get('password')

            if service.create_user(name, email, password):
                return redirect('/login')
            else:
                return template('auth', error="Email já cadastrado", user=None)

        @self.bottle.get('/logout')
        def logout_action():
            response.delete_cookie("user_session", path='/')
            return redirect('/')

        @self.bottle.get('/perfil')
        def perfil_view():
            user = request.get_cookie("user_session", secret='segredo')
            if not user: 
                return redirect('/login')
            return template('views/perfil', user=user)