/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.shoes;


import model.shoes.Shoes;
import model.shoes.ShoesDesign;
import model.shoes.ShoesItem;
import model.shoes.ShoesOrigin;

/**
 *
 * @author DELL
 */
public interface ShoesDAO {
    int deleteShoes(int ID);
    int updateShoes(Shoes shoes);
    int updateShoesDesign(ShoesDesign shoesDesign);
    int updateShoesItem(ShoesItem shoesItem);
    int updateShoesOrigin(ShoesOrigin shoesOrigin);
    Shoes getClothes(int ID);
    ShoesOrigin getClothesORG(int ID);
    ShoesDesign getClothesDSG(int ID);
    ShoesItem getClothesIT(int ID);
}
