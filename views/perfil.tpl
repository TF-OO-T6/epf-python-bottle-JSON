% rebase('layout.tpl', title='Meu Perfil')

<div
  class="container"
  style="max-width: 1100px; margin-top: 3rem; margin-bottom: 3rem"
>
  <div class="profile-grid">
    <div class="card profile-sidebar">
      <div class="profile-header-card">
        <div class="profile-avatar-large">
          % if defined('user') and user:
          {{ user[0].upper() }}
          % else: ? % end
        </div>
        <h3 class="profile-name">{{ user }}</h3>
        <p class="profile-role">Usuário Membro</p>
      </div>

      <div class="profile-menu">
        <a href="/perfil" class="profile-menu-link active">
          <i class="ri-user-line"></i> Dados Pessoais
        </a>
        <a href="/perfil/favoritos" class="profile-menu-link">
          <i class="ri-heart-line"></i> Favoritos
        </a>
        <a href="/perfil/configuracoes" class="profile-menu-link">
          <i class="ri-settings-3-line"></i> Segurança
        </a>
        <div style="border-top: 1px solid #e2e8f0; margin: 10px 0"></div>
        <a href="/logout" class="profile-menu-link danger">
          <i class="ri-logout-box-line"></i> Sair
        </a>
      </div>
    </div>

    <div class="card profile-content">
      <h2 class="content-title">Detalhes da Conta</h2>

      <form class="profile-form">
        <div class="form-row">
          <div class="form-group">
            <label>Nome de Usuário</label>
            <input
              type="text"
              value="{{ user }}"
              disabled
              class="input-field"
              style="background-color: #f1f5f9"
            />
          </div>
          <div class="form-group">
            <label>Email</label>
            <input type="email" value="email@exemplo.com" class="input-field" />
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label>Nome Completo</label>
            <input
              type="text"
              placeholder="Seu nome completo"
              class="input-field"
            />
          </div>
          <div class="form-group">
            <label>Telefone</label>
            <input
              type="tel"
              placeholder="(00) 00000-0000"
              class="input-field"
            />
          </div>
        </div>

        <div class="form-group">
          <label>Biografia</label>
          <textarea
            rows="4"
            placeholder="Escreva um pouco sobre você..."
            class="input-field"
          ></textarea>
        </div>

        <button type="button" class="btn-save">Salvar Alterações</button>
      </form>
    </div>
  </div>
</div>
