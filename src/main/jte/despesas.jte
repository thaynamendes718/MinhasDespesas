@param java.util.List<com.example.minhasdespesas.model.Despesa> despesas
@param double total

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Despesas</title>
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

        <h1>Minhas Despesas 💸</h1>

        <a class="botao" href="/despesas/nova">+ Nova Despesa</a>

        <table>
            <thead>
            <tr>
                <th>Descrição</th>
                <th>Categoria</th>
                <th>Valor</th>
                <th>Data</th>
                <th>Pagamento</th>
            </tr>
            </thead>

            <tbody>
            @for(var d : despesas)
                <tr>
                    <td>${d.getDescricao()}</td>
                    <td>${d.getCategoria().getNome()}</td>
                    <td>R$ ${String.format("%.2f", d.getValor())}</td>
                    <td>${d.getData().toString()}</td>
                    <td>${d.getFormaPagamento()}</td>
                </tr>
            @endfor
            </tbody>
        </table>

        <div class="total">
            Total gasto: R$ ${String.format("%.2f", total)}
        </div>

    </div>
</div>

</body>
</html>