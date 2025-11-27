% rebase('layout.tpl', title='Criar Conta')

<div class="auth-container">
  <div class="auth-card">
    <div class="auth-header">
      <h2>Nova Conta</h2>
      <p>Preencha seus dados</p>
    </div>

    % if defined('error') and error:
    <div class="auth-error">{{ error }}</div>
    % end

    <form action="/cadastro" method="POST" class="auth-form">
      <div class="form-group">
        <label>Nome</label>
        <input type="text" name="name" required />
      </div>
      <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" required />
      </div>
      <div class="form-group">
        <label>Senha</label>
        <input type="password" name="password" required />
      </div>
      <button type="submit" class="btn btn-primary btn-full">Cadastrar</button>
    </form>

    <div class="auth-footer">Já tem conta? <a href="/login">Entrar</a></div>
  </div>
</div>
