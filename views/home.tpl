% rebase('views/layout.tpl', title='Home')

<div style="background-color: #0f172a; color: white; padding: 80px 20px; text-align: center; border-bottom: 1px solid #1e293b;">
    <h1 style="margin: 0; font-size: 2.5rem; letter-spacing: -1px;">Brasília: Seu Guia de Descobertas</h1>
    <p style="color: #94a3b8; font-size: 1.1rem; margin-top: 10px; max-width: 600px; margin-left: auto; margin-right: auto;">
        Descubra os melhores museus, centros culturais e restaurantes da capital federal.
    </p>

    <form action="/busca" method="GET" style="margin-top: 30px;">
        <input 
            type="text" 
            name="q" 
            placeholder="Onde vamos hoje? (Ex: Museu, Pizza, Show...)" 
            style="padding: 15px; width: 100%; max-width: 500px; border-radius: 30px; border: none; outline: none; text-align: center; font-size: 1rem; color: #333; box-shadow: 0 4px 6px rgba(0,0,0,0.1);"
            required
        >
    </form>
    </div>

<div class="container" style="max-width: 1200px; margin: -40px auto 60px; padding: 0 20px;">
    
    <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 20px; padding: 0 10px;">
        <h3 style="margin: 0; color: #0f172a; font-size: 1.5rem;">✨ Melhores Avaliados</h3>
        <span style="background: #e0e7ff; color: #4338ca; padding: 5px 12px; border-radius: 20px; font-size: 0.8rem; font-weight: 600;">Top 10</span>
    </div>
    
    <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 24px;">
        
        % for local in locais:
        <div class="card">
            
            <div style="height: 200px; overflow: hidden; position: relative;">
                <img src="{{local.imagem}}" style="width: 100%; height: 100%; object-fit: cover;">
                % if local.status == 'Aberto':
                    <span style="position: absolute; top: 12px; right: 12px; background: #22c55e; color: white; padding: 4px 10px; border-radius: 6px; font-size: 0.75rem; font-weight: 700;">Aberto</span>
                % else:
                    <span style="position: absolute; top: 12px; right: 12px; background: #ef4444; color: white; padding: 4px 10px; border-radius: 6px; font-size: 0.75rem; font-weight: 700;">Fechado</span>
                % end
            </div>

            <div style="padding: 20px; display: flex; flex-direction: column; gap: 10px;">
                <h4 style="margin: 0; color: #1e293b; font-size: 1.1rem;">{{local.nome}}</h4>
                
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <span style="color: #f59e0b; font-weight: 700; font-size: 0.95rem;">★ {{local.nota}}</span>
                    <span style="color: #64748b; font-size: 0.85rem;">{{local.categoria}}</span>
                </div>
                
                <a href="/detalhes/locais/{{local.id}}" style="display: block; text-align: center; width: 100%; padding: 10px; border: 1px solid #e2e8f0; background: transparent; color: #475569; border-radius: 8px; font-weight: 600; cursor: pointer; transition: 0.2s; text-decoration: none;">
                    Ver Detalhes
                </a>
            </div>
        </div>
        % end

    </div>
</div>