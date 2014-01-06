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
@Table(name = "anexo03")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Anexo03.findAll", query = "SELECT a FROM Anexo03 a")})
public class Anexo03 implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_anexo03")
    private Integer idAnexo03;
    @Column(name = "numero_empleado")
    private String numeroEmpleado;
    @Column(name = "numero_contrato")
    private Integer numeroContrato;
    @Column(name = "c_renta")
    private String cRenta;
    @Column(name = "n_renta")
    private Integer nRenta;
    @Column(name = "mes")
    private Integer mes;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "ingreso_bruto")
    private Double ingresoBruto;
    @Column(name = "id_deducciones")
    private Integer idDeducciones;
    @Column(name = "ingreso_neto")
    private Double ingresoNeto;
    @Column(name = "I_fisco")
    private Double ifisco;
    @Column(name = "I_renta")
    private Double irenta;
    @Column(name = "a_fisco")
    private Double aFisco;
    @Column(name = "a_empleado")
    private Double aEmpleado;
    @Column(name = "inthi")
    private Double inthi;
    @Column(name = "ind_edu")
    private Double indEdu;
    @Column(name = "gtomed")
    private Double gtomed;
    @Column(name = "i_reten")
    private Double iReten;
    @Column(name = "i_crefis")
    private Double iCrefis;

    public Anexo03() {
    }

    public Anexo03(Integer idAnexo03) {
        this.idAnexo03 = idAnexo03;
    }

    public Integer getIdAnexo03() {
        return idAnexo03;
    }

    public void setIdAnexo03(Integer idAnexo03) {
        this.idAnexo03 = idAnexo03;
    }

    public String getNumeroEmpleado() {
        return numeroEmpleado;
    }

    public void setNumeroEmpleado(String numeroEmpleado) {
        this.numeroEmpleado = numeroEmpleado;
    }

    public Integer getNumeroContrato() {
        return numeroContrato;
    }

    public void setNumeroContrato(Integer numeroContrato) {
        this.numeroContrato = numeroContrato;
    }

    public String getCRenta() {
        return cRenta;
    }

    public void setCRenta(String cRenta) {
        this.cRenta = cRenta;
    }

    public Integer getNRenta() {
        return nRenta;
    }

    public void setNRenta(Integer nRenta) {
        this.nRenta = nRenta;
    }

    public Integer getMes() {
        return mes;
    }

    public void setMes(Integer mes) {
        this.mes = mes;
    }

    public Double getIngresoBruto() {
        return ingresoBruto;
    }

    public void setIngresoBruto(Double ingresoBruto) {
        this.ingresoBruto = ingresoBruto;
    }

    public Integer getIdDeducciones() {
        return idDeducciones;
    }

    public void setIdDeducciones(Integer idDeducciones) {
        this.idDeducciones = idDeducciones;
    }

    public Double getIngresoNeto() {
        return ingresoNeto;
    }

    public void setIngresoNeto(Double ingresoNeto) {
        this.ingresoNeto = ingresoNeto;
    }

    public Double getIfisco() {
        return ifisco;
    }

    public void setIfisco(Double ifisco) {
        this.ifisco = ifisco;
    }

    public Double getIrenta() {
        return irenta;
    }

    public void setIrenta(Double irenta) {
        this.irenta = irenta;
    }

    public Double getAFisco() {
        return aFisco;
    }

    public void setAFisco(Double aFisco) {
        this.aFisco = aFisco;
    }

    public Double getAEmpleado() {
        return aEmpleado;
    }

    public void setAEmpleado(Double aEmpleado) {
        this.aEmpleado = aEmpleado;
    }

    public Double getInthi() {
        return inthi;
    }

    public void setInthi(Double inthi) {
        this.inthi = inthi;
    }

    public Double getIndEdu() {
        return indEdu;
    }

    public void setIndEdu(Double indEdu) {
        this.indEdu = indEdu;
    }

    public Double getGtomed() {
        return gtomed;
    }

    public void setGtomed(Double gtomed) {
        this.gtomed = gtomed;
    }

    public Double getIReten() {
        return iReten;
    }

    public void setIReten(Double iReten) {
        this.iReten = iReten;
    }

    public Double getICrefis() {
        return iCrefis;
    }

    public void setICrefis(Double iCrefis) {
        this.iCrefis = iCrefis;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idAnexo03 != null ? idAnexo03.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Anexo03)) {
            return false;
        }
        Anexo03 other = (Anexo03) object;
        if ((this.idAnexo03 == null && other.idAnexo03 != null) || (this.idAnexo03 != null && !this.idAnexo03.equals(other.idAnexo03))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.Anexo03[ idAnexo03=" + idAnexo03 + " ]";
    }
    
}
