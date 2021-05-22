package com.rdeconti.mercadinho.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rdeconti.mercadinho.models.Loja;
import com.rdeconti.mercadinho.repository.LojaRepository;

@Service
public class LojaService {

	@Autowired
	private LojaRepository lojaRepository;

    public LojaService(LojaRepository lojaRepository) {
        this.lojaRepository = lojaRepository;
    }

    public Iterable<Loja> findAll(){
        return lojaRepository.findAll( );
    }
	
	public Loja findById(Integer id) {
		return lojaRepository.findByCodigo( id );
	}

    public void inserir(Loja loja){
    	lojaRepository.save( loja );
        System.out.println("INSERIDO: " + loja);
    }

    public void alterar(Loja loja){
    	lojaRepository.save( loja );
        System.out.println("ALTERADO: " + loja);
    }    

    public void excluir(Integer id){
    	Loja loja = lojaRepository.findByCodigo( id );
    	lojaRepository.delete( loja );
        System.out.println("EXCLUIDO: " + loja);
    }    
}
