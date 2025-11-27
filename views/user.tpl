% rebase('layout.tpl', title='Meu Perfil')

<div
  class="container"
  style="max-width: 600px; margin-top: 4rem; margin-bottom: 4rem"
>
  <div class="card">
    <div class="card-body" style="text-align: center; padding: 3rem">
      <div
        style="
          width: 80px;
          height: 80px;
          background-color: var(--primary);
          color: white;
          border-radius: 50%;
          display: flex;
          align-items: center;
          justify-content: center;
          font-size: 2.5rem;
          font-weight: 700;
          margin: 0 auto 1.5rem;
        "
      >
        % if defined('user') and user:
        {{ user[0].upper() }}
        % else: ? % end
      </div>

      <h2 style="margin-bottom: 0.5rem; color: var(--foreground)">
        Olá, {{ user }}!
      </h2>
      <p style="color: #64748b; margin-bottom: 2rem">
        Este é o seu painel de membro do BSB Cultural.
      </p>

      <div
        style="
          display: grid;
          grid-template-columns: 1fr 1fr;
          gap: 15px;
          text-align: left;
        "
      >
        <button
          class="btn"
          style="
            border: 1px solid var(--border);
            background: white;
            color: var(--foreground);
            justify-content: flex-start;
          "
        >
          ⚙️ Configurações
        </button>

        <button
          class="btn"
          style="
            border: 1px solid var(--border);
            background: white;
            color: var(--foreground);
            justify-content: flex-start;
          "
        >
          ❤️ Meus Favoritos
        </button>
      </div>

      <hr
        style="margin: 2rem 0; border: 0; border-top: 1px solid var(--border)"
      />

      <a
        href="/logout"
        class="btn"
        style="
          background-color: #fee2e2;
          color: #dc2626;
          width: 100%;
          border: 1px solid #fecaca;
        "
      >
        Sair da Conta
      </a>
    </div>
  </div>
</div>
