@param java.util.List<com.example.minhasdespesas.model.Categoria> categorias
@param java.util.List<com.example.minhasdespesas.model.Despesa> despesas

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Categorias</title>
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

        <h1>Minhas Categorias 🌷</h1>

        <a class="botao" href="/categorias/nova">+ Nova Categoria</a>

        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Limite</th>
                <th>Qtd. Despesas</th>
            </tr>
            </thead>

            <tbody>
            @for(var c : categorias)
                <tr>
                    <td>${c.getId()}</td>
                    <td>${c.getNome()}</td>
                    <td>${c.getDescricao()}</td>
                    <td>
                        @if(c.getLimite() != null)
                            R$ ${String.format("%.2f", c.getLimite())}
                        @else
                            —
                        @endif
                    </td>
                    <td>
                        ${despesas.stream()
.filter(d -> d.getCategoria().getId() == c.getId())
.count()}
                    </td>
                </tr>
            @endfor
            </tbody>
        </table>

    </div>
</div>

</body>
</html>