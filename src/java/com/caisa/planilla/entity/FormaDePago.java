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
@Table(name = "forma_de_pago")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FormaDePago.findAll", query = "SELECT f FROM FormaDePago f")})
public class FormaDePago implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_frm_pago")
    private Integer idFrmPago;
    @Column(name = "frm_pago")
    private String frmPago;

    public FormaDePago() {
    }

    public FormaDePago(Integer idFrmPago) {
        this.idFrmPago = idFrmPago;
    }

    public Integer getIdFrmPago() {
        return idFrmPago;
    }

    public void setIdFrmPago(Integer idFrmPago) {
        this.idFrmPago = idFrmPago;
    }

    public String getFrmPago() {
        return frmPago;
    }

    public void setFrmPago(String frmPago) {
        this.frmPago = frmPago;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFrmPago != null ? idFrmPago.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FormaDePago)) {
            return false;
        }
        FormaDePago other = (FormaDePago) object;
        if ((this.idFrmPago == null && other.idFrmPago != null) || (this.idFrmPago != null && !this.idFrmPago.equals(other.idFrmPago))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.FormaDePago[ idFrmPago=" + idFrmPago + " ]";
    }
    
}
