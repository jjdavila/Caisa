/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caisa.planilla.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "fincas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Fincas.findAll", query = "SELECT f FROM Fincas f")})
public class Fincas implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_finca")
    private Integer idFinca;
    @Column(name = "id_empresa")
    private Integer idEmpresa;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "area")
    private Integer area;

    public Fincas() {
    }

    public Fincas(Integer idFinca) {
        this.idFinca = idFinca;
    }

    public Integer getIdFinca() {
        return idFinca;
    }

    public void setIdFinca(Integer idFinca) {
        this.idFinca = idFinca;
    }

    public Integer getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(Integer idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFinca != null ? idFinca.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Fincas)) {
            return false;
        }
        Fincas other = (Fincas) object;
        if ((this.idFinca == null && other.idFinca != null) || (this.idFinca != null && !this.idFinca.equals(other.idFinca))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.Fincas[ idFinca=" + idFinca + " ]";
    }
    
}
