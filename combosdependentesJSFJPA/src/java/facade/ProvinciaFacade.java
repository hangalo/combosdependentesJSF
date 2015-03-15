/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entities.Provincia;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author desenvolvimento
 */
@Stateless
public class ProvinciaFacade extends AbstractFacade<Provincia> {
    @PersistenceContext(unitName = "combosdependentesJSFJPAPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProvinciaFacade() {
        super(Provincia.class);
    }
    
}
