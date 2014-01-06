/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.caisa.planilla.entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.codehaus.jackson.annotate.JsonIgnore;

/**
 *
 * @author NCN00973
 */
@Entity
@Table(name = "empleados")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Empleados.findAll", query = "SELECT e FROM Empleados e")})
public class Empleados implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EmpleadosPK empleadosPK;
    @Basic(optional = false)
    @Column(name = "Nombre")
    private String nombre;
    @Basic(optional = false)
    @Column(name = "Apellido")
    private String apellido;
    @Basic(optional = false)
    @Column(name = "Cedula")
    private String cedula;
    @Column(name = "Fecha_nacimiento")
    @Temporal(TemporalType.DATE)
    private Date fechanacimiento;
    @Column(name = "Seguro_social")
    private Integer segurosocial;
    @Column(name = "Tipo_de_sangre")
    private Integer tipodesangre;
    @Column(name = "id_estado_civil")
    private Integer idEstadoCivil;
    @Column(name = "id_nacionalidad")
    private Integer idNacionalidad;
    @Column(name = "Sindicato")
    private Integer sindicato;
    @Column(name = "Carnet_salud")
    private Integer carnetsalud;
    @Column(name = "Fecha_vencimiento_carnet")
    @Temporal(TemporalType.DATE)
    private Date fechavencimientocarnet;
    @Column(name = "nro_cuenta")
    private String nroCuenta;
    @Column(name = "tipo_cuenta")
    private Integer tipoCuenta;
    @Column(name = "banco")
    private String banco;
    @OneToMany(mappedBy = "numeroEmpleado")
    private Collection<DecimosAcumulados> decimosAcumuladosCollection;
    @JoinColumn(name = "id_sexo", referencedColumnName = "id_sexo")
    @ManyToOne
    private Sexos idSexo;
    @JoinColumn(name = "id_Estado", referencedColumnName = "id")
    @ManyToOne
    private Estados idEstado;

    public Empleados() {
    }

    public Empleados(EmpleadosPK empleadosPK) {
        this.empleadosPK = empleadosPK;
    }

    public Empleados(EmpleadosPK empleadosPK, String nombre, String apellido, String cedula) {
        this.empleadosPK = empleadosPK;
        this.nombre = nombre;
        this.apellido = apellido;
        this.cedula = cedula;
    }

    public Empleados(int id, String idEmpleado) {
        this.empleadosPK = new EmpleadosPK(id, idEmpleado);
    }

    public EmpleadosPK getEmpleadosPK() {
        return empleadosPK;
    }

    public void setEmpleadosPK(EmpleadosPK empleadosPK) {
        this.empleadosPK = empleadosPK;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public Date getFechanacimiento() {
        return fechanacimiento;
    }

    public void setFechanacimiento(Date fechanacimiento) {
        this.fechanacimiento = fechanacimiento;
    }

    public Integer getSegurosocial() {
        return segurosocial;
    }

    public void setSegurosocial(Integer segurosocial) {
        this.segurosocial = segurosocial;
    }

    public Integer getTipodesangre() {
        return tipodesangre;
    }

    public void setTipodesangre(Integer tipodesangre) {
        this.tipodesangre = tipodesangre;
    }

    public Integer getIdEstadoCivil() {
        return idEstadoCivil;
    }

    public void setIdEstadoCivil(Integer idEstadoCivil) {
        this.idEstadoCivil = idEstadoCivil;
    }

    public Integer getIdNacionalidad() {
        return idNacionalidad;
    }

    public void setIdNacionalidad(Integer idNacionalidad) {
        this.idNacionalidad = idNacionalidad;
    }

    public Integer getSindicato() {
        return sindicato;
    }

    public void setSindicato(Integer sindicato) {
        this.sindicato = sindicato;
    }

    public Integer getCarnetsalud() {
        return carnetsalud;
    }

    public void setCarnetsalud(Integer carnetsalud) {
        this.carnetsalud = carnetsalud;
    }

    public Date getFechavencimientocarnet() {
        return fechavencimientocarnet;
    }

    public void setFechavencimientocarnet(Date fechavencimientocarnet) {
        this.fechavencimientocarnet = fechavencimientocarnet;
    }

    public String getNroCuenta() {
        return nroCuenta;
    }

    public void setNroCuenta(String nroCuenta) {
        this.nroCuenta = nroCuenta;
    }

    public Integer getTipoCuenta() {
        return tipoCuenta;
    }

    public void setTipoCuenta(Integer tipoCuenta) {
        this.tipoCuenta = tipoCuenta;
    }

    public String getBanco() {
        return banco;
    }

    public void setBanco(String banco) {
        this.banco = banco;
    }

    @XmlTransient
    @JsonIgnore
    public Collection<DecimosAcumulados> getDecimosAcumuladosCollection() {
        return decimosAcumuladosCollection;
    }

    public void setDecimosAcumuladosCollection(Collection<DecimosAcumulados> decimosAcumuladosCollection) {
        this.decimosAcumuladosCollection = decimosAcumuladosCollection;
    }

    public Sexos getIdSexo() {
        return idSexo;
    }

    public void setIdSexo(Sexos idSexo) {
        this.idSexo = idSexo;
    }

    public Estados getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(Estados idEstado) {
        this.idEstado = idEstado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (empleadosPK != null ? empleadosPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Empleados)) {
            return false;
        }
        Empleados other = (Empleados) object;
        if ((this.empleadosPK == null && other.empleadosPK != null) || (this.empleadosPK != null && !this.empleadosPK.equals(other.empleadosPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.caisa.planilla.entity.Empleados[ empleadosPK=" + empleadosPK + " ]";
    }
    
}
