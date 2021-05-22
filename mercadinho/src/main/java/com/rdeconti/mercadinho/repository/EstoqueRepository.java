package com.rdeconti.mercadinho.repository;

import org.springframework.data.repository.CrudRepository;

import com.rdeconti.mercadinho.models.Estoque;
import com.rdeconti.mercadinho.models.Loja;
import com.rdeconti.mercadinho.models.Produto;

public interface EstoqueRepository extends CrudRepository<Estoque, String>
{
	public Estoque findByCodigoFilialAndCodigoProduto(Loja codigoFilial, Produto codigoProduto);
}
