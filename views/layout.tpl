<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{title or 'BSB Cultural'}}</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">

    <style>
        /* --- PALETA DE CORES HARMÔNICA --- */
        :root {
            --primary-dark: #0f172a;   /* Azul Quase Preto (Header) */
            --primary-light: #1e293b;  /* Azul Petróleo (Hero/Cartões Escuros) */
            --accent: #6366f1;         /* Indigo (Botões/Destaques) */
            --accent-hover: #4f46e5;   /* Indigo Escuro (Hover) */
            --bg-page: #f8fafc;        /* Cinza Muito Claro (Fundo) */
            --text-main: #334155;      /* Cinza Escuro (Texto) */
        }

        body, html { margin: 0; padding: 0; font-family: 'Inter', sans-serif; background-color: var(--bg-page); color: var(--text-main); }
        * { box-sizing: border-box; }
        a { text-decoration: none; }

        /* HEADER */
        header {
            background-color: var(--primary-dark);
            padding: 1rem 0;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
            position: sticky; top: 0; z-index: 100;
        }

        .header-container {
            max-width: 1200px; margin: 0 auto; padding: 0 20px;
            display: flex; justify-content: space-between; align-items: center;
        }

        /* LOGO */
        .logo-link { display: flex; align-items: center; gap: 8px; color: #fff; font-weight: 700; font-size: 1.25rem; }
        .logo-link span { color: #94a3b8; font-weight: 400; }
        .logo-icon { width: 24px; height: 24px; color: var(--accent); }

        /* MENU */
        .nav-links a {
            color: #cbd5e1; font-weight: 500; font-size: 0.95rem; margin: 0 15px;
            transition: color 0.2s;
        }
        .nav-links a:hover { color: #fff; }

        /* BOTÃO */
        .btn-login {
            background-color: var(--accent); color: white; padding: 0.6rem 1.5rem;
            border-radius: 8px; font-weight: 600; font-size: 0.9rem; transition: 0.2s;
        }
        .btn-login:hover { background-color: var(--accent-hover); }

        /* FOOTER */
        footer { background: var(--primary-dark); color: #64748b; text-align: center; padding: 30px; margin-top: 60px; }
    </style>
</head>
<body>

    <header>
        <div class="header-container">
            <a href="/portal" class="logo-link">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="logo-icon">
                  <path fill-rule="evenodd" d="M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z" clip-rule="evenodd" />
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
            <div><a href="#" class="btn-login">Entrar</a></div>
        </div>
    </header>

    <main>{{!base}}</main>

    <footer><p>© 2025 BSB Cultural. Feito com Python e Bottle.</p></footer>
</body>
</html>