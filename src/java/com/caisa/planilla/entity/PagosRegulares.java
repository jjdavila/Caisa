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
@Table(name = "pagos_regulares")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PagosRegulares.findAll", query = "SELECT p FROM PagosRegulares p")})
public class PagosRegulares implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "id_contrato")
    private int idContrato;
    @Basic(optional = false)
    @Column(name = "id_empleado")
    private int idEmpleado;
    @Column(name = "Fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Column(name = "deducciones_total")
    private Integer deduccionesTotal;
    @Column(name = "tota_bruto")
    private Integer totaBruto;
    @Column(name = "total_mano")
    private Integer totalMano;

    public PagosRegulares() {
    }

    public PagosRegulares(Integer id) {
        this.id = id;
    }

    public PagosRegulares(Integer id, int idContrato, int idEmpleado) {
        this.id = id;
        this.idContrato = idContrato;
        this.idEmpleado = idEmpleado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getIdContrato() {
        return idContrato;
    }

    public void setIdContrato(int idContrato) {
        this.idContrato = idContrato;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Integer getDeduccionesTotal() {
        return deduccionesTotal;
    }

    public void setDeduccionesTotal(Integer deduccionesTotal) {
        this.deduccionesTotal = deduccionesTotal;
    }

    public Integer getTotaBruto() {
        return totaBruto;
    }

    public void setTotaBruto(Integer totaBruto) {
        this.totaBruto = totaBruto;
    }

    public Integer getTotalMano() {
        return totalMano;
    }

    public void setTotalMano(Integer totalMano) {
        this.totalMano = totalMano;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PagosRegulares)) {
            return false;
        }
        PagosRegulares other = (PagosRegulares) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.PagosRegulares[ id=" + id + " ]";
    }
    
}
