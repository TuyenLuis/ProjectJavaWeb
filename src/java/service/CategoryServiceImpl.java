/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import model.Categories;
import dao.CategoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author a5lhp
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    private CategoryDao categoryDao;
    
    @Override
    public boolean create(Categories category) {
        return categoryDao.create(category);
    }

    @Override
    public boolean update(Categories category) {
        return categoryDao.update(category);
    }

    @Override
    public boolean delete(Categories category) {
        return categoryDao.delete(category);
    }

    @Override
    public Categories getById(int categoryId) {
        return categoryDao.getById(categoryId);
    }

    @Override
    public List<Categories> getAll() {
        return categoryDao.getAll();
    }

    @Override
    public List<Categories> getListFilter() {
        List<Categories> listAll = categoryDao.getAll();
        List<Categories> listCategoryFilter = listAll.subList(0, 7);
        listCategoryFilter.add(0, new Categories(0, "All Categories", null));
        return listCategoryFilter;
    }
}
