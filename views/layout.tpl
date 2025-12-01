<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{{title or 'BSB Cultural'}}</title>
    <link rel="stylesheet" href="/static/css/style.css" />

    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap"
      rel="stylesheet"
    />

    <style>
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

      .card {
        background: white;
        border: 1px solid #e2e8f0;
        border-radius: 16px;
        overflow: hidden;
        transition: transform 0.3s ease, box-shadow 0.3s ease,
          border-color 0.3s ease;
      }

      .card:hover {
        transform: translateY(-8px);
        box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        border-color: var(--accent);
      }

      .card button {
        transition: background-color 0.2s, color 0.2s;
      }
      .card:hover button {
        background-color: #f1f5f9;
        color: var(--primary-dark);
      }

      /* --- CSS DO MENU DROPDOWN (Foi restaurado aqui) --- */
      .dropdown {
        position: relative;
        display: inline-block;
      }

      .dropdown-btn {
        background: none;
        border: none;
        cursor: pointer;
        display: flex;
        align-items: center;
        gap: 10px;
        padding: 0;
      }

      .header-profile-img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
        border: 2px solid var(--accent);
        background-color: white;
      }

      .dropdown-arrow {
        color: #cbd5e1;
        font-size: 0.8rem;
      }

      .dropdown-content {
        display: none;
        position: absolute;
        right: 0;
        top: 120%;
        background-color: white;
        min-width: 180px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        border-radius: 12px;
        z-index: 1000;
        overflow: hidden;
        border: 1px solid #e2e8f0;
      }

      .dropdown-content a {
        color: var(--text-main);
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        font-size: 0.9rem;
        font-weight: 500;
        transition: background 0.2s;
      }

      .dropdown-content a:hover {
        background-color: #f1f5f9;
        color: var(--accent);
      }

      .show {
        display: block;
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
          <a href="/gastronomia">Gastronomia</a>
          <a href="/eventos">Eventos</a>
          <a href="/museus">Museus</a>
        </nav>

        <div>
          % if defined('user') and user:
          <div class="dropdown">
            <button onclick="toggleDropdown()" class="dropdown-btn">
              <img
                src="/static/img/user-line.png"
                alt="Perfil"
                class="header-profile-img"
              />
              <span style="color: #cbd5e1; font-weight: 500">{{ user }}</span>
              <span class="dropdown-arrow">▼</span>
            </button>

            <div id="userDropdown" class="dropdown-content">
              <a href="/perfil">Meu Perfil</a>
              <a href="/perfil/configuracoes">Configurações</a>
              <div style="border-top: 1px solid #e2e8f0; margin: 4px 0"></div>
              <a href="/logout" style="color: #ef4444">Sair</a>
            </div>
          </div>

          % else:
          <a href="/login" class="btn-login">Entrar</a>
          % end
        </div>
      </div>
    </header>

    <main>{{ !base }}</main>

    <footer><p>© 2025 BSB Cultural. Feito com Python e Bottle.</p></footer>

    <script>
      function toggleDropdown() {
        document.getElementById("userDropdown").classList.toggle("show");
      }

      window.onclick = function (event) {
        if (
          !event.target.matches(".dropdown-btn") &&
          !event.target.matches(".header-profile-img") &&
          !event.target.matches("span")
        ) {
          var dropdowns = document.getElementsByClassName("dropdown-content");
          for (var i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains("show")) {
              openDropdown.classList.remove("show");
            }
          }
        }
      };
    </script>
  </body>
</html>
