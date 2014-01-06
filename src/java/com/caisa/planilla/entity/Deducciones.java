/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caisa.planilla.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author NCN00973
 */
@Entity
@Table(name = "deducciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Deducciones.findAll", query = "SELECT d FROM Deducciones d")})
public class Deducciones implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_deduccion")
    private Integer idDeduccion;
    @Column(name = "Fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Column(name = "usuario")
    private String usuario;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "id_formula")
    private Integer idFormula;

    public Deducciones() {
    }

    public Deducciones(Integer idDeduccion) {
        this.idDeduccion = idDeduccion;
    }

    public Integer getIdDeduccion() {
        return idDeduccion;
    }

    public void setIdDeduccion(Integer idDeduccion) {
        this.idDeduccion = idDeduccion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getIdFormula() {
        return idFormula;
    }

    public void setIdFormula(Integer idFormula) {
        this.idFormula = idFormula;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDeduccion != null ? idDeduccion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Deducciones)) {
            return false;
        }
        Deducciones other = (Deducciones) object;
        if ((this.idDeduccion == null && other.idDeduccion != null) || (this.idDeduccion != null && !this.idDeduccion.equals(other.idDeduccion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.Deducciones[ idDeduccion=" + idDeduccion + " ]";
    }
    
}
