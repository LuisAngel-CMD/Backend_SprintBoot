package com.backend.sprintboot.models.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.backend.sprintboot.models.entity.Cliente;
import com.backend.sprintboot.models.entity.Region;

public interface IClienteService {

	public List<Cliente> findAll();
	
	public Page<Cliente> findAll(Pageable pageable);

	public Cliente findById(Long id);

	public Cliente save(Cliente cliente);

	public void delete(long id);
	
	public List<Region> findAllRegiones();

}
