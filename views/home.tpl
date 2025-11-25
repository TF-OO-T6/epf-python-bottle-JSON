% rebase('views/layout.tpl', title='BSB Cultural')

<div style="background-color: #003366; color: white; padding: 60px 20px; text-align: center; border-radius: 0 0 20px 20px;">
    <h1>Brasília: Seu Guia de Descobertas</h1>
    <p>Descubra os melhores locais da capital.</p>
</div>

<div class="container" style="max-width: 1200px; margin: 40px auto; padding: 0 20px;">
    <h3>Melhores Avaliados</h3>
    
    <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 20px; margin-top: 20px;">
        
        % for local in locais:
        <div class="card" style="border: 1px solid #ddd; border-radius: 10px; overflow: hidden; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
            <img src="{{local.imagem}}" style="width: 100%; height: 200px; object-fit: cover;">
            <div style="padding: 15px;">
                <h4 style="margin: 0 0 10px; color: #0056b3;">{{local.nome}}</h4>
                <p><strong>Nota:</strong> ⭐ {{local.nota}}</p>
                <p style="color: #666;">{{local.categoria}}</p>
                
                % if local.status == 'Aberto':
                    <span style="color: green; font-weight: bold;">Aberto</span>
                % else:
                    <span style="color: red; font-weight: bold;">Fechado</span>
                % end
            </div>
        </div>
        % end

    </div>
</div>