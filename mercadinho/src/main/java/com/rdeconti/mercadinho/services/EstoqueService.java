package com.rdeconti.mercadinho.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rdeconti.mercadinho.models.Estoque;
import com.rdeconti.mercadinho.models.Loja;
import com.rdeconti.mercadinho.models.Produto;
import com.rdeconti.mercadinho.repository.EstoqueRepository;

@Service
public class EstoqueService {

    @Autowired
    private LojaService lojaService;

    @Autowired
    private ProdutoService produtoService;

    @Autowired
    private EstoqueRepository estoqueRepository;

    public Iterable<Estoque> findAll(){
        return estoqueRepository.findAll( );
    }
    
    public Estoque findById(Integer codigoFilial, Integer codigoProduto) {
    	Loja loja = lojaService.findById( codigoFilial );
    	Produto produto = produtoService.findById( codigoProduto );
    	return estoqueRepository.findByCodigoFilialAndCodigoProduto( loja, produto );
    }

    public void inserir(Estoque estoque){
    	estoqueRepository.save( estoque );
        System.out.println("INSERIDO: " + estoque);
    }

    public void alterar(Estoque estoque){
    	estoqueRepository.save( estoque );
        System.out.println("ALTERADO: " + estoque);
    }    

    public void excluir(Integer codigoFilial, Integer codigoProduto){
    	Estoque estoque = findById( codigoFilial, codigoProduto );
    	estoqueRepository.delete( estoque );
        System.out.println("EXCLUIDO: " + estoque);
    } 
}
