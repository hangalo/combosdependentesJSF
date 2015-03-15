/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import entities.Municipio;
import entities.Provincia;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author desenvolvimento
 */
@Stateless
public class MunicipioFacade extends AbstractFacade<Municipio> {

    @PersistenceContext(unitName = "combosdependentesJSFJPAPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MunicipioFacade() {
        super(Municipio.class);
    }

    public List<Municipio> buscaMunicipiosPorProvincia(Provincia provincia) {
        Query query = em.createQuery("SELECT m FROM Municipio m WHERE m.idProvincia =:provincia ");
        query.setParameter("provincia", provincia);
        return query.getResultList();
    }
}
