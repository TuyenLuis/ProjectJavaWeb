/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import java.util.List;
import model.Categories;

/**
 *
 * @author a5lhp
 */
public interface CategoryService {
    public boolean create(Categories category);
    
    public boolean update(Categories category);
    
    public boolean delete(Categories category);
    
    public Categories getById(int categoryId);
    
    public List<Categories> getAll();
    
    public List<Categories> getListFilter();
    
}
