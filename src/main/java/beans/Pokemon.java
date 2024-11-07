/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Beans/Bean.java to edit this template
 */
package beans;

import java.io.Serializable;

/**
 *
 * @author Familia
 */
public class Pokemon implements Serializable {

    private String nombre;
    private int numero;
    private String tipo;
    private String evolucion;
    private String nivelPoder;
    private String descripcion;

    public Pokemon() {
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

    public String getNivelPoder() {
        return nivelPoder;
    }

    public void setNivelPoder(String nivelPoder) {
        this.nivelPoder = nivelPoder;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

}
