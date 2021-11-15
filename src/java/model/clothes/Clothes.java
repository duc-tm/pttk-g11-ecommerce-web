/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.clothes;

/**
 *
 * @author DELL
 */
public class Clothes {
    private String id;
    private String name;
    private String description;
    private int quantityOfGoods;
    private float cost;
    private String version;
    private String image;

    public Clothes() {
    }

    public Clothes(String id, String name, String description, int quantityOfGoods, float cost, String version, String image) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.quantityOfGoods = quantityOfGoods;
        this.cost = cost;
        this.version = version;
        this.image = image;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantityOfGoods() {
        return quantityOfGoods;
    }

    public void setQuantityOfGoods(int quantityOfGoods) {
        this.quantityOfGoods = quantityOfGoods;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
}
