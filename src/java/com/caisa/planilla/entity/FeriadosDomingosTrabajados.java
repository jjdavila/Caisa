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
@Table(name = "feriados_domingos_trabajados")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FeriadosDomingosTrabajados.findAll", query = "SELECT f FROM FeriadosDomingosTrabajados f")})
public class FeriadosDomingosTrabajados implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_feriados")
    private Integer idFeriados;
    @Column(name = "num_empleado")
    private String numEmpleado;
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Column(name = "descrpcion_dia")
    private String descrpcionDia;
    @Column(name = "hora_entrata")
    private Integer horaEntrata;
    @Column(name = "hora_salida_almuerzo")
    private Integer horaSalidaAlmuerzo;
    @Column(name = "hora_entrada_almuerzo")
    private Integer horaEntradaAlmuerzo;
    @Column(name = "hora_salida")
    private Integer horaSalida;
    @Column(name = "biatiaticos")
    private Integer biatiaticos;
    @Column(name = "horas_extras")
    private Integer horasExtras;

    public FeriadosDomingosTrabajados() {
    }

    public FeriadosDomingosTrabajados(Integer idFeriados) {
        this.idFeriados = idFeriados;
    }

    public Integer getIdFeriados() {
        return idFeriados;
    }

    public void setIdFeriados(Integer idFeriados) {
        this.idFeriados = idFeriados;
    }

    public String getNumEmpleado() {
        return numEmpleado;
    }

    public void setNumEmpleado(String numEmpleado) {
        this.numEmpleado = numEmpleado;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDescrpcionDia() {
        return descrpcionDia;
    }

    public void setDescrpcionDia(String descrpcionDia) {
        this.descrpcionDia = descrpcionDia;
    }

    public Integer getHoraEntrata() {
        return horaEntrata;
    }

    public void setHoraEntrata(Integer horaEntrata) {
        this.horaEntrata = horaEntrata;
    }

    public Integer getHoraSalidaAlmuerzo() {
        return horaSalidaAlmuerzo;
    }

    public void setHoraSalidaAlmuerzo(Integer horaSalidaAlmuerzo) {
        this.horaSalidaAlmuerzo = horaSalidaAlmuerzo;
    }

    public Integer getHoraEntradaAlmuerzo() {
        return horaEntradaAlmuerzo;
    }

    public void setHoraEntradaAlmuerzo(Integer horaEntradaAlmuerzo) {
        this.horaEntradaAlmuerzo = horaEntradaAlmuerzo;
    }

    public Integer getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(Integer horaSalida) {
        this.horaSalida = horaSalida;
    }

    public Integer getBiatiaticos() {
        return biatiaticos;
    }

    public void setBiatiaticos(Integer biatiaticos) {
        this.biatiaticos = biatiaticos;
    }

    public Integer getHorasExtras() {
        return horasExtras;
    }

    public void setHorasExtras(Integer horasExtras) {
        this.horasExtras = horasExtras;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFeriados != null ? idFeriados.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FeriadosDomingosTrabajados)) {
            return false;
        }
        FeriadosDomingosTrabajados other = (FeriadosDomingosTrabajados) object;
        if ((this.idFeriados == null && other.idFeriados != null) || (this.idFeriados != null && !this.idFeriados.equals(other.idFeriados))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.FeriadosDomingosTrabajados[ idFeriados=" + idFeriados + " ]";
    }
    
}
