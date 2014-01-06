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
@Table(name = "turnos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Turnos.findAll", query = "SELECT t FROM Turnos t")})
public class Turnos implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "id_turno")
    private String idTurno;
    @Column(name = "Hora_inicio")
    private String horainicio;
    @Column(name = "Hora_final")
    private String horafinal;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "pago_por_hora")
    private Double pagoPorHora;
    @Column(name = "tipo_turno")
    private String tipoTurno;
    @Column(name = "pago_extra_activo")
    private Integer pagoExtraActivo;
    @Column(name = "valor_pago_extra")
    private Double valorPagoExtra;
    @Column(name = "valor_pago_extra_2")
    private Double valorPagoExtra2;
    @Column(name = "valor_pago_extra_3")
    private Double valorPagoExtra3;
    @Column(name = "pago_feriado_activo")
    private Integer pagoFeriadoActivo;
    @Column(name = "valor_pago_hra_feriado")
    private Double valorPagoHraFeriado;
    @Column(name = "horas_dia")
    private Double horasDia;
    @Column(name = "id_activo")
    private Integer idActivo;
    @Column(name = "user")
    private String user;
    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaCreacion;

    public Turnos() {
    }

    public Turnos(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIdTurno() {
        return idTurno;
    }

    public void setIdTurno(String idTurno) {
        this.idTurno = idTurno;
    }

    public String getHorainicio() {
        return horainicio;
    }

    public void setHorainicio(String horainicio) {
        this.horainicio = horainicio;
    }

    public String getHorafinal() {
        return horafinal;
    }

    public void setHorafinal(String horafinal) {
        this.horafinal = horafinal;
    }

    public Double getPagoPorHora() {
        return pagoPorHora;
    }

    public void setPagoPorHora(Double pagoPorHora) {
        this.pagoPorHora = pagoPorHora;
    }

    public String getTipoTurno() {
        return tipoTurno;
    }

    public void setTipoTurno(String tipoTurno) {
        this.tipoTurno = tipoTurno;
    }

    public Integer getPagoExtraActivo() {
        return pagoExtraActivo;
    }

    public void setPagoExtraActivo(Integer pagoExtraActivo) {
        this.pagoExtraActivo = pagoExtraActivo;
    }

    public Double getValorPagoExtra() {
        return valorPagoExtra;
    }

    public void setValorPagoExtra(Double valorPagoExtra) {
        this.valorPagoExtra = valorPagoExtra;
    }

    public Double getValorPagoExtra2() {
        return valorPagoExtra2;
    }

    public void setValorPagoExtra2(Double valorPagoExtra2) {
        this.valorPagoExtra2 = valorPagoExtra2;
    }

    public Double getValorPagoExtra3() {
        return valorPagoExtra3;
    }

    public void setValorPagoExtra3(Double valorPagoExtra3) {
        this.valorPagoExtra3 = valorPagoExtra3;
    }

    public Integer getPagoFeriadoActivo() {
        return pagoFeriadoActivo;
    }

    public void setPagoFeriadoActivo(Integer pagoFeriadoActivo) {
        this.pagoFeriadoActivo = pagoFeriadoActivo;
    }

    public Double getValorPagoHraFeriado() {
        return valorPagoHraFeriado;
    }

    public void setValorPagoHraFeriado(Double valorPagoHraFeriado) {
        this.valorPagoHraFeriado = valorPagoHraFeriado;
    }

    public Double getHorasDia() {
        return horasDia;
    }

    public void setHorasDia(Double horasDia) {
        this.horasDia = horasDia;
    }

    public Integer getIdActivo() {
        return idActivo;
    }

    public void setIdActivo(Integer idActivo) {
        this.idActivo = idActivo;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
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
        if (!(object instanceof Turnos)) {
            return false;
        }
        Turnos other = (Turnos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.Turnos[ id=" + id + " ]";
    }
    
}
