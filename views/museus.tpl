% rebase('views/layout.tpl', title='Museus')

<div style="background-color: #7c3aed; color: white; padding: 40px 20px; text-align: center;">
    <h1>Museus e Cultura</h1>
    <p>Explore a história e a arte da capital federal.</p>
</div>

<div class="container" style="max-width: 1200px; margin: 40px auto; padding: 0 20px;">
    
    <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px;">
        
        % for m in museus:
        <div class="card" style="border: 1px solid #ddd; border-radius: 10px; overflow: hidden; box-shadow: 0 4px 8px rgba(0,0,0,0.1); background: white;">
            <div style="height: 200px; overflow: hidden;">
                <img src="{{m.imagem}}" style="width: 100%; height: 100%; object-fit: cover;">
            </div>
            
            <div style="padding: 20px;">
                <h3 style="margin: 0 0 10px; color: #333;">{{m.nome}}</h3>
                
                <div style="display: flex; align-items: center; margin-bottom: 10px; color: #7c3aed; font-weight: bold;">
                    ⭐ {{m.nota}}
                </div>

                <p style="margin: 5px 0; color: #555; font-size: 0.9rem;">
                    🕒 <strong>Visitação:</strong> {{m.horario}}
                </p>
                <p style="margin: 5px 0; color: #555; font-size: 0.9rem;">
                    📍 <strong>Local:</strong> {{m.localizacao}}
                </p>
                
                <button style="width: 100%; margin-top: 15px; padding: 10px; background-color: #7c3aed; color: white; border: none; border-radius: 5px; cursor: pointer; font-weight: bold;">Ver Detalhes</button>
            </div>
        </div>
        % end

    </div>
</div>