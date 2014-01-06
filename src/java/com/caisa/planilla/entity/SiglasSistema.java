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
@Table(name = "siglas_sistema")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SiglasSistema.findAll", query = "SELECT s FROM SiglasSistema s")})
public class SiglasSistema implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_siglas")
    private Integer idSiglas;
    @Column(name = "nombre_largo")
    private String nombreLargo;
    @Column(name = "siglas")
    private String siglas;
    @Column(name = "apl")
    private String apl;

    public SiglasSistema() {
    }

    public SiglasSistema(Integer idSiglas) {
        this.idSiglas = idSiglas;
    }

    public Integer getIdSiglas() {
        return idSiglas;
    }

    public void setIdSiglas(Integer idSiglas) {
        this.idSiglas = idSiglas;
    }

    public String getNombreLargo() {
        return nombreLargo;
    }

    public void setNombreLargo(String nombreLargo) {
        this.nombreLargo = nombreLargo;
    }

    public String getSiglas() {
        return siglas;
    }

    public void setSiglas(String siglas) {
        this.siglas = siglas;
    }

    public String getApl() {
        return apl;
    }

    public void setApl(String apl) {
        this.apl = apl;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idSiglas != null ? idSiglas.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SiglasSistema)) {
            return false;
        }
        SiglasSistema other = (SiglasSistema) object;
        if ((this.idSiglas == null && other.idSiglas != null) || (this.idSiglas != null && !this.idSiglas.equals(other.idSiglas))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.SiglasSistema[ idSiglas=" + idSiglas + " ]";
    }
    
}
