/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caisa.planilla.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author NCN00973
 */
@Entity
@Table(name = "sistemas_error")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SistemasError.findAll", query = "SELECT s FROM SistemasError s")})
public class SistemasError implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_erroor")
    private Integer idErroor;
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "error_formateado")
    private String errorFormateado;

    public SistemasError() {
    }

    public SistemasError(Integer idErroor) {
        this.idErroor = idErroor;
    }

    public Integer getIdErroor() {
        return idErroor;
    }

    public void setIdErroor(Integer idErroor) {
        this.idErroor = idErroor;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getErrorFormateado() {
        return errorFormateado;
    }

    public void setErrorFormateado(String errorFormateado) {
        this.errorFormateado = errorFormateado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idErroor != null ? idErroor.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SistemasError)) {
            return false;
        }
        SistemasError other = (SistemasError) object;
        if ((this.idErroor == null && other.idErroor != null) || (this.idErroor != null && !this.idErroor.equals(other.idErroor))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.SistemasError[ idErroor=" + idErroor + " ]";
    }
    
}
