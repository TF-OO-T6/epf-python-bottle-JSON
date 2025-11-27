<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{{title or 'BSB Cultural'}}</title>

    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap"
      rel="stylesheet"
    />

    <style>
      /* --- CONFIGURAÇÕES GERAIS --- */
      :root {
        --primary-dark: #0f172a;
        --primary-light: #1e293b;
        --accent: #6366f1;
        --accent-hover: #4f46e5;
        --bg-page: #f8fafc;
        --text-main: #334155;
      }

      body,
      html {
        margin: 0;
        padding: 0;
        font-family: "Inter", sans-serif;
        background-color: var(--bg-page);
        color: var(--text-main);
      }
      * {
        box-sizing: border-box;
      }
      a {
        text-decoration: none;
      }

      /* --- HEADER --- */
      header {
        background-color: var(--primary-dark);
        padding: 1rem 0;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        position: sticky;
        top: 0;
        z-index: 100;
      }

      .header-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
      }

      .logo-link {
        display: flex;
        align-items: center;
        gap: 8px;
        color: #fff;
        font-weight: 700;
        font-size: 1.25rem;
      }
      .logo-link span {
        color: #94a3b8;
        font-weight: 400;
      }
      .logo-icon {
        width: 24px;
        height: 24px;
        color: var(--accent);
      }

      .nav-links a {
        color: #cbd5e1;
        font-weight: 500;
        font-size: 0.95rem;
        margin: 0 15px;
        transition: color 0.2s;
      }
      .nav-links a:hover {
        color: #fff;
      }

      .btn-login {
        background-color: var(--accent);
        color: white;
        padding: 0.6rem 1.5rem;
        border-radius: 8px;
        font-weight: 600;
        font-size: 0.9rem;
        transition: 0.2s;
      }
      .btn-login:hover {
        background-color: var(--accent-hover);
      }

      footer {
        background: var(--primary-dark);
        color: #64748b;
        text-align: center;
        padding: 30px;
        margin-top: 60px;
      }

      /* --- ESTILOS GLOBAIS DOS CARDS (O SEGREDO ESTÁ AQUI) --- */

      /* 1. Define como o card se comporta normalmente */
      .card {
        background: white;
        border: 1px solid #e2e8f0;
        border-radius: 16px;
        overflow: hidden;
        /* Suaviza a animação */
        transition: transform 0.3s ease, box-shadow 0.3s ease,
          border-color 0.3s ease;
      }

      /* 2. O que acontece quando passa o mouse (HOVER) */
      .card:hover {
        transform: translateY(-8px); /* Sobe 8 pixels */
        box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15); /* Sombra mais forte */
        border-color: var(--accent); /* Borda fica roxa */
      }

      /* 3. Efeito no botão dentro do card */
      .card button {
        transition: background-color 0.2s, color 0.2s;
      }
      .card:hover button {
        background-color: #f1f5f9; /* Botão fica cinza claro */
        color: var(--primary-dark);
      }
    </style>
  </head>
  <body>
    <header>
      <div class="header-container">
        <a href="/portal" class="logo-link">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 24 24"
            fill="currentColor"
            class="logo-icon"
          >
            <path
              fill-rule="evenodd"
              d="M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z"
              clip-rule="evenodd"
            />
          </svg>
          <div>BSB <span>Cultural</span></div>
        </a>
        <nav class="nav-links">
          <a href="/portal">Home</a>
          <a href="/mapas">Mapas</a>
          <a href="/gastronomia">Gastronomia</a>
          <a href="/eventos">Eventos</a>
          <a href="/museus">Museus</a>
        </nav>
        <div><a href="/user" class="btn-login">Entrar</a></div>
      </div>
    </header>

    <main>{{ !base }}</main>

    <footer><p>© 2025 BSB Cultural. Feito com Python e Bottle.</p></footer>
  </body>
</html>
