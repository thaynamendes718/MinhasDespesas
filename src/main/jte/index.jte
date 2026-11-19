@param java.util.List<com.example.minhasdespesas.model.Categoria> categorias
@param java.util.List<com.example.minhasdespesas.model.Despesa> despesas
@param double total

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Minhas Despesas</title>
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
        <h1>Para onde foi meu dinheiro? 🌸</h1>
        <p>Organize seus gastos de um jeito simples e delicado.</p>
    </div>

    <div class="cards">

        <div class="stat">
            <h2>${categorias.size()}</h2>
            <p>Categorias</p>
        </div>

        <div class="stat">
            <h2>${despesas.size()}</h2>
            <p>Despesas</p>
        </div>

        <div class="stat">
            <h2>R$ ${String.format("%.2f", total)}</h2>
            <p>Total gasto</p>
        </div>

    </div>

    <div class="card">
        <h2>Vamos começar? 💕</h2>

        <a class="botao" href="/categorias/nova">Criar categoria</a>
        <a class="botao" href="/despesas/nova">Registrar despesa</a>
    </div>

</div>

</body>
</html>
