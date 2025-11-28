% rebase('views/layout.tpl', title='Eventos')

<div style="background-color: #e11d48; color: white; padding: 40px 20px; text-align: center;">
    <h1>Agenda Cultural</h1>
    <p>Shows, teatros e festivais imperdíveis em Brasília.</p>
</div>

<div class="container" style="max-width: 1200px; margin: 40px auto; padding: 0 20px;">
    
    <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px;">
        
        % for e in eventos:
        <div class="card" style="border: 1px solid #ddd; border-radius: 10px; overflow: hidden; box-shadow: 0 4px 8px rgba(0,0,0,0.1); background: white;">
            <div style="height: 200px; overflow: hidden; position: relative;">
                <img src="{{e.imagem}}" style="width: 100%; height: 100%; object-fit: cover;">
                <span style="position: absolute; top: 10px; right: 10px; background: rgba(0,0,0,0.7); color: white; padding: 4px 8px; border-radius: 4px; font-size: 0.8rem;">
                    {{e.categoria}}
                </span>
            </div>
            
            <div style="padding: 20px;">
                <h3 style="margin: 0 0 10px; color: #333;">{{e.nome}}</h3>
                
                <p style="margin: 5px 0; color: #e11d48; font-weight: bold; font-size: 1.1rem;">
                    📅 {{e.horario}}
                </p>
                <p style="margin: 5px 0; color: #555; font-size: 0.9rem;">
                    📍 {{e.localizacao}}
                </p>
                
                <a href="/detalhes/eventos/{{e.id}}" style="display: block; width: 100%; margin-top: 15px; padding: 10px; background-color: #e11d48; color: white; border: none; border-radius: 5px; cursor: pointer; font-weight: bold; text-align: center; text-decoration: none;">Ver Detalhes</a>
            </div>
        </div>
        % end

    </div>
</div>