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
@Table(name = "jornadas_trabajadores")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "JornadasTrabajadores.findAll", query = "SELECT j FROM JornadasTrabajadores j")})
public class JornadasTrabajadores implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_jornadas_horas")
    private Integer idJornadasHoras;
    @Column(name = "id_empleado")
    private String idEmpleado;
    @Column(name = "id_jornadas")
    private Integer idJornadas;
    @Column(name = "hora_inicio")
    private String horaInicio;
    @Column(name = "hora_salida_almuerzo")
    private String horaSalidaAlmuerzo;
    @Column(name = "hora_entrada_almuerzo")
    private String horaEntradaAlmuerzo;
    @Column(name = "hora_salida")
    private String horaSalida;
    @Column(name = "fecha_inicio")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaInicio;
    @Column(name = "fecha_fin")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaFin;
    @Column(name = "usuario")
    private Integer usuario;

    public JornadasTrabajadores() {
    }

    public JornadasTrabajadores(Integer idJornadasHoras) {
        this.idJornadasHoras = idJornadasHoras;
    }

    public Integer getIdJornadasHoras() {
        return idJornadasHoras;
    }

    public void setIdJornadasHoras(Integer idJornadasHoras) {
        this.idJornadasHoras = idJornadasHoras;
    }

    public String getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(String idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public Integer getIdJornadas() {
        return idJornadas;
    }

    public void setIdJornadas(Integer idJornadas) {
        this.idJornadas = idJornadas;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getHoraSalidaAlmuerzo() {
        return horaSalidaAlmuerzo;
    }

    public void setHoraSalidaAlmuerzo(String horaSalidaAlmuerzo) {
        this.horaSalidaAlmuerzo = horaSalidaAlmuerzo;
    }

    public String getHoraEntradaAlmuerzo() {
        return horaEntradaAlmuerzo;
    }

    public void setHoraEntradaAlmuerzo(String horaEntradaAlmuerzo) {
        this.horaEntradaAlmuerzo = horaEntradaAlmuerzo;
    }

    public String getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(String horaSalida) {
        this.horaSalida = horaSalida;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public Integer getUsuario() {
        return usuario;
    }

    public void setUsuario(Integer usuario) {
        this.usuario = usuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idJornadasHoras != null ? idJornadasHoras.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof JornadasTrabajadores)) {
            return false;
        }
        JornadasTrabajadores other = (JornadasTrabajadores) object;
        if ((this.idJornadasHoras == null && other.idJornadasHoras != null) || (this.idJornadasHoras != null && !this.idJornadasHoras.equals(other.idJornadasHoras))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.JornadasTrabajadores[ idJornadasHoras=" + idJornadasHoras + " ]";
    }
    
}
