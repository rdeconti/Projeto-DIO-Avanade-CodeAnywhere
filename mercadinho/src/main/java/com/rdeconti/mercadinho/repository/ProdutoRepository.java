package com.rdeconti.mercadinho.repository;

import org.springframework.data.repository.CrudRepository;

import com.rdeconti.mercadinho.models.Produto;

public interface ProdutoRepository extends CrudRepository<Produto, String>
{
	public Produto findByCodigo(Integer codigo);
}
