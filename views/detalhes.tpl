% rebase('views/layout.tpl', title=item.nome)

<div style="background-color: #0f172a; color: white; padding: 60px 20px; text-align: center;">
    <h1 style="font-size: 2.5rem; margin: 0;">{{item.nome}}</h1>
    <p style="color: #94a3b8; margin-top: 10px;">{{categoria_nome}}</p>
</div>

<div class="container" style="max-width: 900px; margin: -40px auto 60px; padding: 0 20px; position: relative;">
    
    <div style="background: white; border-radius: 16px; overflow: hidden; box-shadow: 0 10px 25px rgba(0,0,0,0.1); border: 1px solid #e2e8f0;">
        
        <div style="height: 400px; overflow: hidden;">
            <img src="{{item.imagem}}" style="width: 100%; height: 100%; object-fit: cover;">
        </div>

        <div style="padding: 40px;">
            <div style="display: flex; gap: 20px; margin-bottom: 30px; flex-wrap: wrap;">
                
                % if hasattr(item, 'nota'):
                <div style="background: #f8fafc; padding: 10px 20px; border-radius: 8px; border: 1px solid #e2e8f0;">
                    <span style="display: block; font-size: 0.8rem; color: #64748b;">Avaliação</span>
                    <span style="font-weight: 700; color: #f59e0b; font-size: 1.2rem;">⭐ {{item.nota}}</span>
                </div>
                % end

                % if hasattr(item, 'horario'):
                <div style="background: #f8fafc; padding: 10px 20px; border-radius: 8px; border: 1px solid #e2e8f0;">
                    <span style="display: block; font-size: 0.8rem; color: #64748b;">Horário</span>
                    <span style="font-weight: 700; color: #334155; font-size: 1.1rem;">🕒 {{item.horario}}</span>
                </div>
                % end

                % if hasattr(item, 'localizacao'):
                <div style="background: #f8fafc; padding: 10px 20px; border-radius: 8px; border: 1px solid #e2e8f0;">
                    <span style="display: block; font-size: 0.8rem; color: #64748b;">Onde Fica</span>
                    <span style="font-weight: 700; color: #334155; font-size: 1.1rem;">📍 {{item.localizacao}}</span>
                </div>
                % end
            </div>

            <h3 style="color: #0f172a;">Sobre este local</h3>
            <p style="line-height: 1.8; color: #475569; font-size: 1.1rem;">
                {{ getattr(item, 'descricao', 'Este local é uma das grandes atrações de Brasília. Visite para conhecer mais!') }}
            </p>

            <div style="margin-top: 40px; border-top: 1px solid #e2e8f0; padding-top: 20px;">
                <a href="javascript:history.back()" style="color: #6366f1; font-weight: 600; text-decoration: none;">← Voltar para a lista</a>
            </div>
        </div>
    </div>
</div>