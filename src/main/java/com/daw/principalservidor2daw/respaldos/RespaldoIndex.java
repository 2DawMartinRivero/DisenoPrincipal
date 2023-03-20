/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daw.principalservidor2daw.respaldos;

import com.daw.principalservidor2daw.DAO.ProyectosJpaController;
import com.daw.principalservidor2daw.DTO.Proyectos;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Usuario
 */
public class RespaldoIndex {
    
     private EntityManagerFactory emf;
     private ProyectosJpaController ctrProyectos;
     private List<Proyectos> listaProyectos;

    public RespaldoIndex() {
        emf = Persistence.createEntityManagerFactory("com.2daw_principalServidor2daw_war_1.0-SNAPSHOTPU");
        ctrProyectos = new ProyectosJpaController(emf);
        listaProyectos = ctrProyectos.findProyectosEntities();
        
        
    }

    public List<Proyectos> getListaProyectos() {
        return listaProyectos;
    }

    public void setListaProyectos(List<Proyectos> listaProyectos) {
        this.listaProyectos = listaProyectos;
    }
    
    
    
    
    
    
}
