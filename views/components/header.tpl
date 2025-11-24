<header
  style="
    background-color: #ffffff;
    border-bottom: 1px solid var(--border);
    padding: 0.8rem 0;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
  "
>
  <div
    class="container"
    style="
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: transparent;
      box-shadow: none;
      padding: 0;
    "
  >
    <a
      href="/"
      style="
        font-size: 1.5rem;
        font-weight: 700;
        color: var(--primary);
        text-decoration: none;
        display: flex;
        align-items: center;
        gap: 10px;
      "
    >
      <span
        style="
          background: var(--primary);
          color: white;
          width: 32px;
          height: 32px;
          display: flex;
          align-items: center;
          justify-content: center;
          border-radius: 6px;
        "
        >B</span
      >
      BSB Cultural
    </a>

    <nav style="display: flex; gap: 25px">
      <a href="/" style="color: var(--foreground); font-weight: 500">Home</a>
      <a href="/locais" style="color: var(--foreground); font-weight: 500"
        >Locais</a
      >
      <a href="/eventos" style="color: var(--foreground); font-weight: 500"
        >Eventos</a
      >
      <a href="/mapa" style="color: var(--foreground); font-weight: 500"
        >Mapa</a
      >
    </nav>

    <div style="display: flex; gap: 15px; align-items: center">
      <form action="/busca" method="GET" style="position: relative">
        <input
          type="text"
          name="q"
          placeholder="Buscar eventos..."
          style="
            padding: 0.5rem 1rem 0.5rem 2rem;
            border: 1px solid #ddd;
            border-radius: 20px;
            font-size: 0.9rem;
            width: 200px;
          "
        />
        <span
          style="
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #888;
          "
          >🔍</span
        >
      </form>

      <a href="/login" style="font-size: 0.9rem; color: #666; font-weight: 600"
        >Entrar</a
      >

      <a
        href="/cadastro"
        class="btn btn-primary"
        style="padding: 0.5rem 1.2rem; border-radius: 20px; font-size: 0.9rem"
      >
        Criar Conta
      </a>
    </div>
  </div>
</header>
