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
@Table(name = "pagos_de_liquidacion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PagosDeLiquidacion.findAll", query = "SELECT p FROM PagosDeLiquidacion p")})
public class PagosDeLiquidacion implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_liquidacion")
    private Integer idLiquidacion;
    @Column(name = "numero_empleado")
    private String numeroEmpleado;
    @Column(name = "fecha_liquidacion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaLiquidacion;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "liq_preaviso")
    private Double liqPreaviso;
    @Column(name = "liq_inde")
    private Double liqInde;
    @Column(name = "liq_prima_antiguedad")
    private Double liqPrimaAntiguedad;
    @Column(name = "mis1")
    private Double mis1;
    @Column(name = "mis2")
    private Double mis2;
    @Column(name = "mis3")
    private Double mis3;
    @Column(name = "mis4")
    private Double mis4;
    @Column(name = "mis5")
    private Double mis5;

    public PagosDeLiquidacion() {
    }

    public PagosDeLiquidacion(Integer idLiquidacion) {
        this.idLiquidacion = idLiquidacion;
    }

    public Integer getIdLiquidacion() {
        return idLiquidacion;
    }

    public void setIdLiquidacion(Integer idLiquidacion) {
        this.idLiquidacion = idLiquidacion;
    }

    public String getNumeroEmpleado() {
        return numeroEmpleado;
    }

    public void setNumeroEmpleado(String numeroEmpleado) {
        this.numeroEmpleado = numeroEmpleado;
    }

    public Date getFechaLiquidacion() {
        return fechaLiquidacion;
    }

    public void setFechaLiquidacion(Date fechaLiquidacion) {
        this.fechaLiquidacion = fechaLiquidacion;
    }

    public Double getLiqPreaviso() {
        return liqPreaviso;
    }

    public void setLiqPreaviso(Double liqPreaviso) {
        this.liqPreaviso = liqPreaviso;
    }

    public Double getLiqInde() {
        return liqInde;
    }

    public void setLiqInde(Double liqInde) {
        this.liqInde = liqInde;
    }

    public Double getLiqPrimaAntiguedad() {
        return liqPrimaAntiguedad;
    }

    public void setLiqPrimaAntiguedad(Double liqPrimaAntiguedad) {
        this.liqPrimaAntiguedad = liqPrimaAntiguedad;
    }

    public Double getMis1() {
        return mis1;
    }

    public void setMis1(Double mis1) {
        this.mis1 = mis1;
    }

    public Double getMis2() {
        return mis2;
    }

    public void setMis2(Double mis2) {
        this.mis2 = mis2;
    }

    public Double getMis3() {
        return mis3;
    }

    public void setMis3(Double mis3) {
        this.mis3 = mis3;
    }

    public Double getMis4() {
        return mis4;
    }

    public void setMis4(Double mis4) {
        this.mis4 = mis4;
    }

    public Double getMis5() {
        return mis5;
    }

    public void setMis5(Double mis5) {
        this.mis5 = mis5;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idLiquidacion != null ? idLiquidacion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PagosDeLiquidacion)) {
            return false;
        }
        PagosDeLiquidacion other = (PagosDeLiquidacion) object;
        if ((this.idLiquidacion == null && other.idLiquidacion != null) || (this.idLiquidacion != null && !this.idLiquidacion.equals(other.idLiquidacion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.PagosDeLiquidacion[ idLiquidacion=" + idLiquidacion + " ]";
    }
    
}
