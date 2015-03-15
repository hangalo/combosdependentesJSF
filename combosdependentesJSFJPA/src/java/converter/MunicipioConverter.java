package converter;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import entities.Municipio;
import entities.Provincia;
import java.util.HashMap;
import java.util.Map;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

/**
 *
 * @author desenvolvimento
 */
@FacesConverter("municipioConverter")
public class MunicipioConverter implements Converter {

    private static Map<String, Municipio> mapa = new HashMap<String, Municipio>();

    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        return mapa.get(value);
    }

    @Override
    public String getAsString(FacesContext context, UIComponent component, Object value) {
        if (value instanceof Provincia) {
            Municipio m = (Municipio) value;
            mapa.put(String.valueOf(m.getIdMunicipio()), m);
            return String.valueOf(m.getIdMunicipio());
        } else {
            return "";
        }

    }

}
