% rebase('views/layout.tpl', title='Busca')

<div style="padding: 40px 20px; text-align: center; background-color: #f8fafc;">
    <h2>Resultados para: <span style="color: #6366f1;">"{{termo}}"</span></h2>
    <p style="color: #64748b;">Encontramos {{len(resultados)}} itens.</p>
</div>

<div class="container" style="max-width: 1000px; margin: 20px auto; padding: 0 20px;">
    
    % if len(resultados) == 0:
        <div style="text-align: center; padding: 50px;">
            <h3>😕 Nenhum local encontrado.</h3>
            <p>Tente buscar por outro nome ou categoria.</p>
            <a href="/portal" style="color: #6366f1; font-weight: bold;">Voltar para o início</a>
        </div>
    % else:
        <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(280px, 1fr)); gap: 20px;">
            % for item in resultados:
            <div class="card" style="display: flex; flex-direction: column;">
                <div style="height: 180px; overflow: hidden;">
                    <img src="{{item.imagem}}" style="width: 100%; height: 100%; object-fit: cover;">
                </div>
                <div style="padding: 15px; flex-grow: 1; display: flex; flex-direction: column;">
                    <h4 style="margin: 0 0 10px; color: #1e293b;">{{item.nome}}</h4>
                    
                    <a href="/detalhes/{{item.tipo_url}}/{{item.id}}" style="margin-top: auto; color: #6366f1; font-weight: bold; font-size: 0.9rem;">Ver Detalhes →</a>
                </div>
            </div>
            % end
        </div>
    % end
</div>