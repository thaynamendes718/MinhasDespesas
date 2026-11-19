package com.example.minhasdespesas;

import com.example.minhasdespesas.model.Categoria;
import com.example.minhasdespesas.model.Despesa;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
public class DespesasController {

    private List<Categoria> categorias = new ArrayList<>();
    private List<Despesa> despesas = new ArrayList<>();

    private int proximoId = 1;

    // Página inicial
    @GetMapping("/")
    public String inicio(Model model) {

        double total = despesas.stream()
                .mapToDouble(Despesa::getValor)
                .sum();

        model.addAttribute("categorias", categorias);
        model.addAttribute("despesas", despesas);
        model.addAttribute("total", total);

        return "index";
    }

    // Abrir formulário de categoria
    @GetMapping("/categorias/nova")
    public String novaCategoria() {
        return "categoria-form";
    }

    // Salvar categoria
    @PostMapping("/categorias")
    public String salvarCategoria(
            @RequestParam String nome,
            @RequestParam(required = false) String descricao,
            @RequestParam(required = false) Double limite) {

        Categoria categoria = new Categoria(
                proximoId++, nome, descricao, limite
        );

        categorias.add(categoria);

        return "redirect:/categorias";
    }

    // Listar categorias
    @GetMapping("/categorias")
    public String listarCategorias(Model model) {

        model.addAttribute("categorias", categorias);
        model.addAttribute("despesas", despesas);

        return "categorias";
    }

    // Abrir formulário de despesa
    @GetMapping("/despesas/nova")
    public String novaDespesa(Model model) {

        model.addAttribute("categorias", categorias);

        return "despesa-form";
    }

    // Salvar despesa
    @PostMapping("/despesas")
    public String salvarDespesa(
            @RequestParam String descricao,
            @RequestParam double valor,
            @RequestParam LocalDate data,
            @RequestParam String formaPagamento,
            @RequestParam int categoriaId) {

        Categoria categoriaSelecionada = categorias.stream()
                .filter(c -> c.getId() == categoriaId)
                .findFirst()
                .orElse(null);

        if (categoriaSelecionada != null) {

            Despesa despesa = new Despesa(
                    descricao,
                    valor,
                    data,
                    formaPagamento,
                    categoriaSelecionada
            );

            despesas.add(despesa);
        }

        return "redirect:/despesas";
    }

    // Listar despesas
    @GetMapping("/despesas")
    public String listarDespesas(Model model) {

        double total = despesas.stream()
                .mapToDouble(Despesa::getValor)
                .sum();

        model.addAttribute("despesas", despesas);
        model.addAttribute("total", total);

        return "despesas";
    }
}