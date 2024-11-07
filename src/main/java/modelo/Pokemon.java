package modelo;

/**
 *
 * @author Diego Valenzuela Parra
 */
public class Pokemon {

    private String nombre;
    private int numero;
    private String tipo;
    private String evolucion;
    private int nivelPoder;
    private String descripcion;

    public Pokemon() {
    }

    public Pokemon(String nombre, int numero, String tipo, String evolucion, int nivelPoder, String descripcion) {
        this.nombre = nombre;
        this.numero = numero;
        this.tipo = tipo;
        this.evolucion = evolucion;
        this.nivelPoder = nivelPoder;
        this.descripcion = descripcion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getEvolucion() {
        return evolucion;
    }

    public void setEvolucion(String evolucion) {
        this.evolucion = evolucion;
    }

    public int getNivelPoder() {
        return nivelPoder;
    }

    public void setNivelPoder(int nivelPoder) {
        this.nivelPoder = nivelPoder;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
}
