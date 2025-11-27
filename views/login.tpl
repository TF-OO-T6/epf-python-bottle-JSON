% rebase('layout.tpl', title='Entrar')

<div class="auth-container">
  <div class="auth-card">
    <div class="auth-header">
      <h2>Bem-vindo</h2>
      <p>Entre na sua conta</p>
    </div>

    % if defined('error') and error:
    <div class="auth-error">{{ error }}</div>
    % end

    <form action="/login" method="POST" class="auth-form">
      <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" required />
      </div>
      <div class="form-group">
        <label>Senha</label>
        <input type="password" name="password" required />
      </div>
      <button type="submit" class="btn btn-primary btn-full">Entrar</button>
    </form>

    <div class="auth-footer">
      Não tem conta? <a href="/cadastro">Cadastre-se</a>
    </div>
  </div>
</div>
