/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import model.Products;
import dao.ProductDao;
import java.util.HashMap;
import model.Categories;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author a5lhp
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;
    
    @Override
    public boolean create(Products product) {
        return productDao.create(product);
    }

    @Override
    public boolean update(Products product) {
        return productDao.update(product);
    }

    @Override
    public boolean delete(Products product) {
        return productDao.delete(product);
    }

    @Override
    public Products findById(int productId) {
        return productDao.findById(productId);
    }

    @Override
    public List<Products> getListProductByCategory(int categoryId) {
        return productDao.getListProductByCategory(categoryId);
    }

    @Override
    public List<Products> getListProductByCategoryAndLimit(int categoryId, int limit) {
        return productDao.getListProductByCategoryAndLimit(categoryId, limit);
    }

    @Override
    public List<Products> getListProductFeatured(int limit) {
        return productDao.getListProductFeatured(limit);
    }

    @Override
    public List<Products> getListSale(int limit) {
        return productDao.getListSale(limit);
    }
    
    @Override
    public List<Products> getListBestSeller(int limit) {
        return productDao.getListBestSeller(limit);
    }
    

    @Override
    public int totalItem() {
        return productDao.totalItem();
    }

    @Override
    public HashMap<Categories, List<Products>> getListProductBestSellerByCategory(int limit) {
        return productDao.getListProductBestSellerByCategory(limit);
    }

    @Override
    public List<Products> getAll() {
        return productDao.getAll();
    }
}
