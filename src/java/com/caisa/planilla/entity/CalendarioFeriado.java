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
@Table(name = "calendario_feriado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CalendarioFeriado.findAll", query = "SELECT c FROM CalendarioFeriado c")})
public class CalendarioFeriado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_feriado")
    private Integer idFeriado;
    @Column(name = "fecha_dia")
    private Integer fechaDia;
    @Column(name = "fecha_mes")
    private Integer fechaMes;
    @Column(name = "id_estado")
    private Integer idEstado;
    @Column(name = "descripcion")
    private String descripcion;

    public CalendarioFeriado() {
    }

    public CalendarioFeriado(Integer idFeriado) {
        this.idFeriado = idFeriado;
    }

    public Integer getIdFeriado() {
        return idFeriado;
    }

    public void setIdFeriado(Integer idFeriado) {
        this.idFeriado = idFeriado;
    }

    public Integer getFechaDia() {
        return fechaDia;
    }

    public void setFechaDia(Integer fechaDia) {
        this.fechaDia = fechaDia;
    }

    public Integer getFechaMes() {
        return fechaMes;
    }

    public void setFechaMes(Integer fechaMes) {
        this.fechaMes = fechaMes;
    }

    public Integer getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(Integer idEstado) {
        this.idEstado = idEstado;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFeriado != null ? idFeriado.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CalendarioFeriado)) {
            return false;
        }
        CalendarioFeriado other = (CalendarioFeriado) object;
        if ((this.idFeriado == null && other.idFeriado != null) || (this.idFeriado != null && !this.idFeriado.equals(other.idFeriado))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.CalendarioFeriado[ idFeriado=" + idFeriado + " ]";
    }
    
}
