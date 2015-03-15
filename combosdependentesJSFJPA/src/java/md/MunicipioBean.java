/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package md;

import entities.Municipio;
import entities.Provincia;
import facade.MunicipioFacade;
import facade.ProvinciaFacade;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.faces.event.AjaxBehaviorEvent;

/**
 *
 * @author desenvolvimento
 */
@Named(value = "municipioBean")
@RequestScoped
public class MunicipioBean {
    @EJB
    private ProvinciaFacade provinciaFacade;
    @EJB
    private MunicipioFacade municipioFacade;

    private Municipio municipio;
    private Provincia provincia;
    private List<Municipio> municipios;
    private List<Provincia> provincias;
    
    
    /**
     * Creates a new instance of MunicipioBean
     */
    public MunicipioBean() {
        municipio= new Municipio();
        provincia= new Provincia();
        municipios= new ArrayList<>();
        provincias= new ArrayList<>();
    }

    public Municipio getMunicipio() {
        return municipio;
    }

    public void setMunicipio(Municipio municipio) {
        this.municipio = municipio;
    }

    public Provincia getProvincia() {
        return provincia;
    }

    public void setProvincia(Provincia provincia) {
        this.provincia = provincia;
    }

    public List<Municipio> getMunicipios() {
        return municipios;
    }

    public void setMunicipios(List<Municipio> municipios) {
        this.municipios = municipios;
    }

    /**
     *  Carregar a lista de provincias
     * @return 
     */
    public List<Provincia> getProvincias() {
        provincias= provinciaFacade.findAll();
        return provincias;
    }

    
    /**
     * 
     * @param event - carrega os municipios da proncia seleccionada 
     */
    
    public void listaMunicipiosDaProvincia(AjaxBehaviorEvent event){
    municipios = municipioFacade.buscaMunicipiosPorProvincia(provincia);
    }
    
    public void setProvincias(List<Provincia> provincias) {
        this.provincias = provincias;
    }
    
    
    
}
