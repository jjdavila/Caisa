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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author NCN00973
 */
@Entity
@Table(name = "decimos_acumulados")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DecimosAcumulados.findAll", query = "SELECT d FROM DecimosAcumulados d")})
public class DecimosAcumulados implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_desimo")
    private Integer idDesimo;
    @Column(name = "anio")
    private Integer anio;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "desimo_numero_1")
    private Double desimoNumero1;
    @Column(name = "desimo_numero_2")
    private Double desimoNumero2;
    @Column(name = "desimo_numero_3")
    private Double desimoNumero3;
    @Column(name = "total_acumulado")
    private Double totalAcumulado;
    @Column(name = "pago_desimo_1")
    private Integer pagoDesimo1;
    @Column(name = "pago_desimo_2")
    private Integer pagoDesimo2;
    @Column(name = "pago_desimo_3")
    private Integer pagoDesimo3;
    @JoinColumn(name = "numero_empleado", referencedColumnName = "id_empleado")
    @ManyToOne
    private Empleados numeroEmpleado;

    public DecimosAcumulados() {
    }

    public DecimosAcumulados(Integer idDesimo) {
        this.idDesimo = idDesimo;
    }

    public Integer getIdDesimo() {
        return idDesimo;
    }

    public void setIdDesimo(Integer idDesimo) {
        this.idDesimo = idDesimo;
    }

    public Integer getAnio() {
        return anio;
    }

    public void setAnio(Integer anio) {
        this.anio = anio;
    }

    public Double getDesimoNumero1() {
        return desimoNumero1;
    }

    public void setDesimoNumero1(Double desimoNumero1) {
        this.desimoNumero1 = desimoNumero1;
    }

    public Double getDesimoNumero2() {
        return desimoNumero2;
    }

    public void setDesimoNumero2(Double desimoNumero2) {
        this.desimoNumero2 = desimoNumero2;
    }

    public Double getDesimoNumero3() {
        return desimoNumero3;
    }

    public void setDesimoNumero3(Double desimoNumero3) {
        this.desimoNumero3 = desimoNumero3;
    }

    public Double getTotalAcumulado() {
        return totalAcumulado;
    }

    public void setTotalAcumulado(Double totalAcumulado) {
        this.totalAcumulado = totalAcumulado;
    }

    public Integer getPagoDesimo1() {
        return pagoDesimo1;
    }

    public void setPagoDesimo1(Integer pagoDesimo1) {
        this.pagoDesimo1 = pagoDesimo1;
    }

    public Integer getPagoDesimo2() {
        return pagoDesimo2;
    }

    public void setPagoDesimo2(Integer pagoDesimo2) {
        this.pagoDesimo2 = pagoDesimo2;
    }

    public Integer getPagoDesimo3() {
        return pagoDesimo3;
    }

    public void setPagoDesimo3(Integer pagoDesimo3) {
        this.pagoDesimo3 = pagoDesimo3;
    }

    public Empleados getNumeroEmpleado() {
        return numeroEmpleado;
    }

    public void setNumeroEmpleado(Empleados numeroEmpleado) {
        this.numeroEmpleado = numeroEmpleado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDesimo != null ? idDesimo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DecimosAcumulados)) {
            return false;
        }
        DecimosAcumulados other = (DecimosAcumulados) object;
        if ((this.idDesimo == null && other.idDesimo != null) || (this.idDesimo != null && !this.idDesimo.equals(other.idDesimo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.DecimosAcumulados[ idDesimo=" + idDesimo + " ]";
    }
    
}
