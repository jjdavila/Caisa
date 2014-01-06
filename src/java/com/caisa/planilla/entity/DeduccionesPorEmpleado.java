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
@Table(name = "deducciones_por_empleado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DeduccionesPorEmpleado.findAll", query = "SELECT d FROM DeduccionesPorEmpleado d")})
public class DeduccionesPorEmpleado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_d_empleado")
    private Integer idDEmpleado;
    @Column(name = "numero_empleado")
    private String numeroEmpleado;
    @Column(name = "id_deduccion_fija")
    private Integer idDeduccionFija;
    @Column(name = "id_deducciones_otro")
    private Integer idDeduccionesOtro;
    @Column(name = "id_formula")
    private Integer idFormula;

    public DeduccionesPorEmpleado() {
    }

    public DeduccionesPorEmpleado(Integer idDEmpleado) {
        this.idDEmpleado = idDEmpleado;
    }

    public Integer getIdDEmpleado() {
        return idDEmpleado;
    }

    public void setIdDEmpleado(Integer idDEmpleado) {
        this.idDEmpleado = idDEmpleado;
    }

    public String getNumeroEmpleado() {
        return numeroEmpleado;
    }

    public void setNumeroEmpleado(String numeroEmpleado) {
        this.numeroEmpleado = numeroEmpleado;
    }

    public Integer getIdDeduccionFija() {
        return idDeduccionFija;
    }

    public void setIdDeduccionFija(Integer idDeduccionFija) {
        this.idDeduccionFija = idDeduccionFija;
    }

    public Integer getIdDeduccionesOtro() {
        return idDeduccionesOtro;
    }

    public void setIdDeduccionesOtro(Integer idDeduccionesOtro) {
        this.idDeduccionesOtro = idDeduccionesOtro;
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
        hash += (idDEmpleado != null ? idDEmpleado.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DeduccionesPorEmpleado)) {
            return false;
        }
        DeduccionesPorEmpleado other = (DeduccionesPorEmpleado) object;
        if ((this.idDEmpleado == null && other.idDEmpleado != null) || (this.idDEmpleado != null && !this.idDEmpleado.equals(other.idDEmpleado))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.DeduccionesPorEmpleado[ idDEmpleado=" + idDEmpleado + " ]";
    }
    
}
