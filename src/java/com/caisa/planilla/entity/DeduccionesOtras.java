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
@Table(name = "deducciones_otras")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DeduccionesOtras.findAll", query = "SELECT d FROM DeduccionesOtras d")})
public class DeduccionesOtras implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_deduciones_otras")
    private Integer idDeducionesOtras;
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "institucion")
    private String institucion;
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaCreacion;
    @Column(name = "user")
    private String user;
    @Column(name = "id_formula")
    private Integer idFormula;

    public DeduccionesOtras() {
    }

    public DeduccionesOtras(Integer idDeducionesOtras) {
        this.idDeducionesOtras = idDeducionesOtras;
    }

    public Integer getIdDeducionesOtras() {
        return idDeducionesOtras;
    }

    public void setIdDeducionesOtras(Integer idDeducionesOtras) {
        this.idDeducionesOtras = idDeducionesOtras;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getInstitucion() {
        return institucion;
    }

    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
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
        hash += (idDeducionesOtras != null ? idDeducionesOtras.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DeduccionesOtras)) {
            return false;
        }
        DeduccionesOtras other = (DeduccionesOtras) object;
        if ((this.idDeducionesOtras == null && other.idDeducionesOtras != null) || (this.idDeducionesOtras != null && !this.idDeducionesOtras.equals(other.idDeducionesOtras))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.DeduccionesOtras[ idDeducionesOtras=" + idDeducionesOtras + " ]";
    }
    
}
