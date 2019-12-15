/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.util.HashMap;
import java.util.List;
import model.*;

/**
 *
 * @author a5lhp
 */
public interface ProductDao {
    public boolean create(Products product);
    
    public boolean update(Products product);
    
    public boolean delete(Products product);
    
    public Products findById(int productId);
    
    public List<Products> getListProductByCategory(int categoryId);
    
    public List<Products> getListProductByCategoryAndLimit(int categoryId, int limit);
    
    public List<Products> getListProductFeatured(int limit);
    
    public List<Products> getListSale(int limit);
    
    public List<Products> getAll();
    
    public int totalItem();

    public List<Products> getListBestSeller(int limit);
    
    public HashMap<Categories, List<Products>> getListProductBestSellerByCategory(int limit);
}
