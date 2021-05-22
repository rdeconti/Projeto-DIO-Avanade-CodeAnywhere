package com.rdeconti.mercadinho.repository;

import org.springframework.data.repository.CrudRepository;

import com.rdeconti.mercadinho.models.Loja;

public interface LojaRepository extends CrudRepository<Loja, String>
{
	Loja findByCodigo(Integer codigo);
}
