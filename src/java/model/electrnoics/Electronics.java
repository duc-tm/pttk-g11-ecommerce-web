/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.electrnoics;

/**
 *
 * @author DELL
 */
public class Electronics {
    private String id;
    private String name;
    private String type;
    private String description;
    private int quantityOfGoods;
    private float cost;
    private String version;
    private String size;
    private String weight;

    public Electronics() {
    }

    public Electronics(String id, String name, String type, String description, int quantityOfGoods, float cost, String version, String size, String weight) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.description = description;
        this.quantityOfGoods = quantityOfGoods;
        this.cost = cost;
        this.version = version;
        this.size = size;
        this.weight = weight;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }
    
}
