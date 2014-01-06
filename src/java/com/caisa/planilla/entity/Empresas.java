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
@Table(name = "empresas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Empresas.findAll", query = "SELECT e FROM Empresas e")})
public class Empresas implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "Nombre_empresa")
    private String nombreempresa;
    @Column(name = "representante_legal")
    private String representanteLegal;
    @Column(name = "direccion")
    private String direccion;
    @Column(name = "apodo")
    private String apodo;
    @Column(name = "telefono_1")
    private String telefono1;
    @Column(name = "telefono_2")
    private String telefono2;
    @Column(name = "id_activo")
    private Integer idActivo;
    @Column(name = "anio_cierre")
    private String anioCierre;
    @Column(name = "mes_cierre")
    private String mesCierre;
    @Column(name = "anio_cxc")
    private String anioCxc;
    @Column(name = "mes_cxc")
    private String mesCxc;

    public Empresas() {
    }

    public Empresas(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreempresa() {
        return nombreempresa;
    }

    public void setNombreempresa(String nombreempresa) {
        this.nombreempresa = nombreempresa;
    }

    public String getRepresentanteLegal() {
        return representanteLegal;
    }

    public void setRepresentanteLegal(String representanteLegal) {
        this.representanteLegal = representanteLegal;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getApodo() {
        return apodo;
    }

    public void setApodo(String apodo) {
        this.apodo = apodo;
    }

    public String getTelefono1() {
        return telefono1;
    }

    public void setTelefono1(String telefono1) {
        this.telefono1 = telefono1;
    }

    public String getTelefono2() {
        return telefono2;
    }

    public void setTelefono2(String telefono2) {
        this.telefono2 = telefono2;
    }

    public Integer getIdActivo() {
        return idActivo;
    }

    public void setIdActivo(Integer idActivo) {
        this.idActivo = idActivo;
    }

    public String getAnioCierre() {
        return anioCierre;
    }

    public void setAnioCierre(String anioCierre) {
        this.anioCierre = anioCierre;
    }

    public String getMesCierre() {
        return mesCierre;
    }

    public void setMesCierre(String mesCierre) {
        this.mesCierre = mesCierre;
    }

    public String getAnioCxc() {
        return anioCxc;
    }

    public void setAnioCxc(String anioCxc) {
        this.anioCxc = anioCxc;
    }

    public String getMesCxc() {
        return mesCxc;
    }

    public void setMesCxc(String mesCxc) {
        this.mesCxc = mesCxc;
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
        if (!(object instanceof Empresas)) {
            return false;
        }
        Empresas other = (Empresas) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.Empresas[ id=" + id + " ]";
    }
    
}
