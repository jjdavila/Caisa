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
@Table(name = "tipos_de_cuenta_banco")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TiposDeCuentaBanco.findAll", query = "SELECT t FROM TiposDeCuentaBanco t"),
    @NamedQuery(name = "TiposDeCuentaBanco.findByIdTiposCuenta", query = "SELECT t FROM TiposDeCuentaBanco t WHERE t.idTiposCuenta = :idTiposCuenta"),
    @NamedQuery(name = "TiposDeCuentaBanco.findByDescripcion", query = "SELECT t FROM TiposDeCuentaBanco t WHERE t.descripcion = :descripcion"),
    @NamedQuery(name = "TiposDeCuentaBanco.findByCodCuenta", query = "SELECT t FROM TiposDeCuentaBanco t WHERE t.codCuenta = :codCuenta"),
    @NamedQuery(name = "TiposDeCuentaBanco.findByNombreCuenta", query = "SELECT t FROM TiposDeCuentaBanco t WHERE t.nombreCuenta = :nombreCuenta")})
public class TiposDeCuentaBanco implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_tipos_cuenta")
    private Integer idTiposCuenta;
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "cod_cuenta")
    private String codCuenta;
    @Column(name = "nombre_cuenta")
    private String nombreCuenta;

    public TiposDeCuentaBanco() {
    }

    public TiposDeCuentaBanco(Integer idTiposCuenta) {
        this.idTiposCuenta = idTiposCuenta;
    }

    public Integer getIdTiposCuenta() {
        return idTiposCuenta;
    }

    public void setIdTiposCuenta(Integer idTiposCuenta) {
        this.idTiposCuenta = idTiposCuenta;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCodCuenta() {
        return codCuenta;
    }

    public void setCodCuenta(String codCuenta) {
        this.codCuenta = codCuenta;
    }

    public String getNombreCuenta() {
        return nombreCuenta;
    }

    public void setNombreCuenta(String nombreCuenta) {
        this.nombreCuenta = nombreCuenta;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTiposCuenta != null ? idTiposCuenta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TiposDeCuentaBanco)) {
            return false;
        }
        TiposDeCuentaBanco other = (TiposDeCuentaBanco) object;
        if ((this.idTiposCuenta == null && other.idTiposCuenta != null) || (this.idTiposCuenta != null && !this.idTiposCuenta.equals(other.idTiposCuenta))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.TiposDeCuentaBanco[ idTiposCuenta=" + idTiposCuenta + " ]";
    }
    
}
