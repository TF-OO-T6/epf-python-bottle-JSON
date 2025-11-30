<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.css"
    />
    <link rel="stylesheet" href="/static/css/style.css" />
    <title>Acesso - BSB Cultural</title>
  </head>
  <body>
    <img
      src="/static/img/tela-login-img.jpg"
      alt="login image"
      class="login__img"
    />

    <a href="/" class="login__back">
      <i class="ri-home-4-line"></i>
    </a>

    <div class="login" id="loginAccessRegister">
      <div class="login__wrapper">
        <div class="login__access">
          <form action="/login" method="POST" class="login__form">
            <h2 class="login__title">Entrar</h2>

            % if defined('error') and error:
            <div class="login__message-error">{{ error }}</div>
            % end

            <div class="login__content">
              <div class="login__box">
                <i class="ri-user-3-line login__icon"></i>
                <div class="login__box-input">
                  <input
                    type="email"
                    required
                    class="login__input"
                    id="login-email"
                    placeholder=" "
                    name="email"
                  />
                  <label for="login-email" class="login__label">Email</label>
                </div>
              </div>

              <div class="login__box">
                <i class="ri-lock-2-line login__icon"></i>
                <div class="login__box-input">
                  <input
                    type="password"
                    required
                    class="login__input"
                    id="login-pass"
                    placeholder=" "
                    name="password"
                  />
                  <label for="login-pass" class="login__label">Senha</label>
                  <i
                    class="ri-eye-off-line login__password-eye"
                    id="login-eye"
                  ></i>
                </div>
              </div>
            </div>

            <div class="login__check">
              <div class="login__check-group">
                <input
                  type="checkbox"
                  class="login__check-input"
                  id="login-check"
                />
                <label for="login-check" class="login__check-label"
                  >Lembrar</label
                >
              </div>
              <a href="#" class="login__forgot">Esqueceu a senha?</a>
            </div>

            <button type="submit" class="login__button">Acessar</button>

            <p class="login__register">
              Não tem conta?
              <a href="#" id="loginButtonRegister">Cadastre-se</a>
            </p>
          </form>
        </div>

        <div class="login__register-form">
          <form action="/cadastro" method="POST" class="login__form">
            <h2 class="login__title">Criar Conta</h2>

            % if defined('error') and error:
            <div class="login__message-error">{{ error }}</div>
            % end

            <div class="login__content">
              <div class="login__box">
                <i class="ri-user-line login__icon"></i>
                <div class="login__box-input">
                  <input
                    type="text"
                    required
                    class="login__input"
                    id="register-names"
                    placeholder=" "
                    name="name"
                  />
                  <label for="register-names" class="login__label"
                    >Nome Completo</label
                  >
                </div>
              </div>

              <div class="login__box">
                <i class="ri-mail-line login__icon"></i>
                <div class="login__box-input">
                  <input
                    type="email"
                    required
                    class="login__input"
                    id="register-email"
                    placeholder=" "
                    name="email"
                  />
                  <label for="register-email" class="login__label">Email</label>
                </div>
              </div>

              <div class="login__box">
                <i class="ri-lock-2-line login__icon"></i>
                <div class="login__box-input">
                  <input
                    type="password"
                    required
                    class="login__input"
                    id="register-pass"
                    placeholder=" "
                    name="password"
                  />
                  <label for="register-pass" class="login__label">Senha</label>
                  <i
                    class="ri-eye-off-line login__password-eye"
                    id="register-eye"
                  ></i>
                </div>
              </div>
            </div>

            <div class="login__check">
              <div class="login__check-group">
                <input
                  type="checkbox"
                  class="login__check-input"
                  id="register-check"
                />
                <label for="register-check" class="login__check-label"
                  >Aceito os termos</label
                >
              </div>
            </div>

            <button type="submit" class="login__button">Cadastrar</button>

            <p class="login__register">
              Já tem conta? <a href="#" id="loginButtonAccess">Entrar</a>
            </p>
          </form>
        </div>
      </div>
    </div>

    <script src="/static/js/auth-main.js"></script>
  </body>
</html>
