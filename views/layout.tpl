<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema Bottle - {{title or 'Sistema'}}</title>
    <link rel="stylesheet" href="/static/css/style.css" />
</head>
<body style="display: flex; flex-direction: column; min-height: 100vh;">

    % include('components/header.tpl')

    <main style="flex: 1;">
        {{!base}}
    </main>

    % include('components/footer.tpl')

</body>
</html>
