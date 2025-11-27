from bottle import get, post, request, response, redirect, template
from services.user_service import UserService

service = UserService()

@get('/login')
def login_view():
    return template('login', error=None)

@post('/login')
def login_action():
    email = request.forms.get('email')
    password = request.forms.get('password')
    
    username = service.authenticate(email, password)
    
    if username:
        response.set_cookie("user_session", username, secret='segredo', path='/')
        return redirect('/')
    else:
        return template('login', error="Email ou senha incorretos")

@get('/cadastro')
def register_view():
    return template('cadastro', error=None)

@post('/cadastro')
def register_action():
    name = request.forms.get('name')
    email = request.forms.get('email')
    password = request.forms.get('password')

    if service.create_user(name, email, password):
        return redirect('/login')
    else:
        return template('cadastro', error="Email já cadastrado")

@get('/logout')
def logout_action():
    response.delete_cookie("user_session", path='/')
    return redirect('/')

@get('/perfil')
def profile_view():
    user = request.get_cookie("user_session", secret='segredo')
    
    if not user:
        return redirect('/login')
        
    return template('user', user=user)