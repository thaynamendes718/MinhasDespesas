package com.example.minhasdespesas.model;

import java.time.LocalDate;

public class Despesa {

    private String descricao;
    private double valor;
    private LocalDate data;
    private String formaPagamento;
    private com.example.minhasdespesas.model.Categoria categoria;

    public Despesa(String descricao, double valor, LocalDate data,
                   String formaPagamento, com.example.minhasdespesas.model.Categoria categoria) {

        this.descricao = descricao;
        this.valor = valor;
        this.data = data;
        this.formaPagamento = formaPagamento;
        this.categoria = categoria;
    }

    public String getDescricao() {
        return descricao;
    }

    public double getValor() {
        return valor;
    }

    public LocalDate getData() {
        return data;
    }

    public String getFormaPagamento() {
        return formaPagamento;
    }

    public com.example.minhasdespesas.model.Categoria getCategoria() {
        return categoria;
    }
}
