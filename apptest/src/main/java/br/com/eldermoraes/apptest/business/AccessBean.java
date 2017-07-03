/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.eldermoraes.apptest.business;

import br.com.eldermoraes.apptest.entities.Access;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author eldermoraes
 */
@Stateless
@EJB(name="AccessBean",beanInterface = AccessBean.class)
public class AccessBean {

    @PersistenceContext
    private EntityManager em;
    
    public List<Access> getAll(){
        return em.createNamedQuery("Access.findAll").getResultList();
    }
    
    public void add(){
        Access access = new Access();
        access.setDescription(new Date().toString());
        
        em.persist(access);
    }
}
