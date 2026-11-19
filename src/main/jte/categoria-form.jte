<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Nova Categoria</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<nav>
    <h2>💗 Minhas Despesas</h2>
    <div>
        <a href="/">Início</a>
        <a href="/categorias">Categorias</a>
        <a href="/categorias/nova">Nova Categoria</a>
        <a href="/despesas">Despesas</a>
        <a href="/despesas/nova">Nova Despesa</a>
    </div>
</nav>

<div class="container">
    <div class="card">

        <h1>🌷 Nova Categoria</h1>

        <form action="/categorias" method="post">

            <label>Nome *</label>
            <input type="text" name="nome"
                   placeholder="Ex: Alimentação" required>

            <label>Descrição</label>
            <input type="text" name="descricao"
                   placeholder="Ex: Mercado e lanches">

            <label>Limite de alerta (R$)</label>
            <input type="number" name="limite"
                   step="0.01" placeholder="400.00">

            <button type="submit">Salvar categoria</button>

            <a class="botao" href="/categorias">Cancelar</a>

        </form>
    </div>
</div>

</body>
</html>