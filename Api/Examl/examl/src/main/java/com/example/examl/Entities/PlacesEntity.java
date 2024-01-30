package com.example.examl.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "Places", schema = "dbo", catalog = "thuchanh")
public class PlacesEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "iditem")
    private int iditem;
    @Basic
    @Column(name = "name")
    private String name;
    @Basic
    @Column(name = "descriptons")
    private String descriptons;

    public int getIditem() {
        return iditem;
    }

    public void setIditem(int iditem) {
        this.iditem = iditem;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescriptons() {
        return descriptons;
    }

    public void setDescriptons(String descriptons) {
        this.descriptons = descriptons;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PlacesEntity that = (PlacesEntity) o;

        if (iditem != that.iditem) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (descriptons != null ? !descriptons.equals(that.descriptons) : that.descriptons != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = iditem;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (descriptons != null ? descriptons.hashCode() : 0);
        return result;
    }
}
