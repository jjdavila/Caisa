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
@Table(name = "tipos_de_sangre")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TiposDeSangre.findAll", query = "SELECT t FROM TiposDeSangre t")})
public class TiposDeSangre implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_tp_sangre")
    private Integer idTpSangre;
    @Column(name = "tp_sangre")
    private String tpSangre;

    public TiposDeSangre() {
    }

    public TiposDeSangre(Integer idTpSangre) {
        this.idTpSangre = idTpSangre;
    }

    public Integer getIdTpSangre() {
        return idTpSangre;
    }

    public void setIdTpSangre(Integer idTpSangre) {
        this.idTpSangre = idTpSangre;
    }

    public String getTpSangre() {
        return tpSangre;
    }

    public void setTpSangre(String tpSangre) {
        this.tpSangre = tpSangre;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTpSangre != null ? idTpSangre.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TiposDeSangre)) {
            return false;
        }
        TiposDeSangre other = (TiposDeSangre) object;
        if ((this.idTpSangre == null && other.idTpSangre != null) || (this.idTpSangre != null && !this.idTpSangre.equals(other.idTpSangre))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.TiposDeSangre[ idTpSangre=" + idTpSangre + " ]";
    }
    
}
