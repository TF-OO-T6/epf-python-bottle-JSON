<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>BSB Cultural</title>
    <link rel="stylesheet" href="/static/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* Estilos rápidos para garantir que o menu fique bonito */
        body { font-family: 'Inter', sans-serif; margin: 0; background-color: #f8fafc; }
        
        /* HEADER */
        header { background-color: #1e293b; padding: 15px 0; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1); }
        .header-container { max-width: 1200px; margin: 0 auto; padding: 0 20px; display: flex; justify-content: space-between; align-items: center; }
        
        /* LOGO */
        .logo { font-size: 1.5rem; font-weight: 700; color: #f8fafc; }
        .logo span { color: #94a3b8; }
        
        /* MENU */
        nav a { margin: 0 15px; text-decoration: none; color: #cbd5e1; font-weight: 500; font-size: 0.95rem; transition: color 0.2s; }
        nav a:hover { color: #fff; }
        
        /* BOTÃO */
        .btn-login { background-color: #4f46e5; color: white; border: none; padding: 8px 20px; border-radius: 6px; cursor: pointer; font-weight: 600; }
        .btn-login:hover { background-color: #4338ca; }
    </style>
</head>
<body>

    <header>
        <div class="header-container">
            <div class="logo">BSB <span>Cultural</span></div>
            
            <nav>
                <a href="/portal">Home</a>
                <a href="/mapas">Mapas</a>
                <a href="/gastronomia">Gastronomia</a>
                <a href="/eventos">Eventos</a>
                <a href="/museus">Museus</a>
            </nav>

            <div>
                <button class="btn-login">Entrar</button>
            </div>
        </div>
    </header>

    {{!base}}

</body>
</html>