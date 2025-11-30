% rebase('layout.tpl', title='Meu Perfil')

<div class="container-perfil">
  <h4 class="titulo-pag">Configurações da Conta</h4>

  <div class="perfil-wrapper">
    <div class="perfil-sidebar">
      <div class="menu-lista">
        <a class="menu-item active" onclick="abrirTab(event, 'geral')">Geral</a>
        <a class="menu-item" onclick="abrirTab(event, 'senha')"
          >Alterar Senha</a
        >
        <a class="menu-item" onclick="abrirTab(event, 'info')">Informações</a>
        <a class="menu-item" onclick="abrirTab(event, 'social')"
          >Redes Sociais</a
        >
        <a class="menu-item" onclick="abrirTab(event, 'conexoes')">Conexões</a>
        <a class="menu-item" onclick="abrirTab(event, 'notificacoes')"
          >Notificações</a
        >
      </div>
    </div>

    <div class="perfil-content">
      <form method="POST" action="/perfil">
        <div id="geral" class="tab-conteudo active">
          <div class="media" style="margin-bottom: 20px">
            <img
              src="/static/img/user-line.png"
              alt="Avatar Padrão"
              style="
                width: 80px;
                height: 80px;
                border-radius: 50%;
                margin-right: 1rem;
                object-fit: cover;
                border: 2px solid #e2e8f0;
                background: #ccc;
              "
            />
            <div>
              <label class="btn btn-default" style="margin-bottom: 5px">
                Carregar nova foto
                <input type="file" style="display: none" />
              </label>
              <div style="font-size: 0.8rem; color: #888; margin-top: 5px">
                Permitido JPG ou PNG.
              </div>
            </div>
          </div>
          <hr />
          <div class="form-group">
            <label class="form-label">Nome de Usuário</label>
            <input
              type="text"
              class="form-control"
              value="{{ user }}"
              disabled
            />
          </div>
          <div class="form-group">
            <label class="form-label">Nome</label>
            <input
              type="text"
              class="form-control"
              name="nome"
              value="{{ dados.get('name', '') }}"
              placeholder="Seu Nome Completo"
            />
          </div>
          <div class="form-group">
            <label class="form-label">E-mail</label>
            <input
              type="text"
              class="form-control"
              name="email"
              value="{{ dados.get('email', '') }}"
            />
          </div>
        </div>

        <div id="senha" class="tab-conteudo">
          <div class="form-group">
            <label class="form-label">Senha Atual</label>
            <input type="password" class="form-control" />
          </div>
          <div class="form-group">
            <label class="form-label">Nova Senha</label>
            <input type="password" class="form-control" />
          </div>
          <div class="form-group">
            <label class="form-label">Repetir Nova Senha</label>
            <input type="password" class="form-control" />
          </div>
        </div>

        <div id="info" class="tab-conteudo">
          <div class="form-group">
            <label class="form-label">Biografia</label>
            <textarea
              class="form-control"
              rows="5"
              name="biografia"
              placeholder="Conte um pouco sobre você..."
              >{{ dados.get("biografia", "") }}</textarea
            >
          </div>
          <div class="form-group">
            <label class="form-label">País</label>
            <select class="form-control">
              <option selected>Brasil</option>
            </select>
          </div>
          <hr />
          <div class="form-group">
            <label class="form-label">Telefone</label>
            <input
              type="text"
              class="form-control"
              name="telefone"
              value="{{ dados.get('telefone', '') }}"
              placeholder="(00) 00000-0000"
            />
          </div>
          <div class="form-group">
            <label class="form-label">Website</label>
            <input
              type="text"
              class="form-control"
              name="website"
              value="{{ dados.get('website', '') }}"
              placeholder="https://seu-site.com.br"
            />
          </div>
        </div>

        <div id="social" class="tab-conteudo">
          <div class="form-group">
            <label class="form-label">Twitter</label>
            <input
              type="text"
              class="form-control"
              value="https://twitter.com/"
            />
          </div>
          <div class="form-group">
            <label class="form-label">Facebook</label>
            <input
              type="text"
              class="form-control"
              value="https://facebook.com/"
            />
          </div>
          <div class="form-group">
            <label class="form-label">Instagram</label>
            <input
              type="text"
              class="form-control"
              value="https://instagram.com/"
            />
          </div>
        </div>

        <div id="conexoes" class="tab-conteudo">
          <div style="margin-bottom: 20px">
            <button
              type="button"
              class="btn"
              style="background: #1da1f2; color: white"
            >
              Conectar ao <strong>Twitter</strong>
            </button>
          </div>
          <hr />
          <button
            type="button"
            class="btn"
            style="background: #3b5998; color: white"
          >
            Conectar ao <strong>Facebook</strong>
          </button>
        </div>

        <div id="notificacoes" class="tab-conteudo">
          <h6 style="margin-bottom: 1rem; font-weight: bold">Atividade</h6>
          <div class="form-group">
            <label
              ><input type="checkbox" checked /> Me envie e-mail quando
              comentarem meu artigo</label
            >
          </div>
        </div>

        <div class="text-right">
          <button type="submit" class="btn btn-primary">
            Salvar alterações
          </button>
          <button type="button" class="btn btn-default">Cancelar</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="/static/js/perfil.js"></script>
