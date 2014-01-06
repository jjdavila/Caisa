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
@Table(name = "incapacidades_por_empleados")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "IncapacidadesPorEmpleados.findAll", query = "SELECT i FROM IncapacidadesPorEmpleados i")})
public class IncapacidadesPorEmpleados implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_incapacidades")
    private Integer idIncapacidades;
    @Column(name = "numero_empleado")
    private String numeroEmpleado;
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Column(name = "monto")
    private Integer monto;
    @Column(name = "horas")
    private Integer horas;

    public IncapacidadesPorEmpleados() {
    }

    public IncapacidadesPorEmpleados(Integer idIncapacidades) {
        this.idIncapacidades = idIncapacidades;
    }

    public Integer getIdIncapacidades() {
        return idIncapacidades;
    }

    public void setIdIncapacidades(Integer idIncapacidades) {
        this.idIncapacidades = idIncapacidades;
    }

    public String getNumeroEmpleado() {
        return numeroEmpleado;
    }

    public void setNumeroEmpleado(String numeroEmpleado) {
        this.numeroEmpleado = numeroEmpleado;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Integer getMonto() {
        return monto;
    }

    public void setMonto(Integer monto) {
        this.monto = monto;
    }

    public Integer getHoras() {
        return horas;
    }

    public void setHoras(Integer horas) {
        this.horas = horas;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idIncapacidades != null ? idIncapacidades.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof IncapacidadesPorEmpleados)) {
            return false;
        }
        IncapacidadesPorEmpleados other = (IncapacidadesPorEmpleados) object;
        if ((this.idIncapacidades == null && other.idIncapacidades != null) || (this.idIncapacidades != null && !this.idIncapacidades.equals(other.idIncapacidades))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.IncapacidadesPorEmpleados[ idIncapacidades=" + idIncapacidades + " ]";
    }
    
}
