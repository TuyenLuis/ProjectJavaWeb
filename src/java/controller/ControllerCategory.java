/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.*;

/**
 *
 * @author a5lhp
 */
@Controller
@RequestMapping(value = "category")
public class ControllerCategory {
    @Autowired
    private ProductService productService;
    
    @Autowired
    private CategoryService categoryService;
    
    @RequestMapping(value = "{categoryId}", method = RequestMethod.GET)
    public String viewCategory(ModelMap mm, HttpSession session, @PathVariable("categoryId") int categoryId) {
        mm.put("listProductByCategory", categoryId == 0 ? productService.getAll() : productService.getListProductByCategory(categoryId));
        mm.put("listCategoryFilter", categoryService.getListFilter());  
        mm.put("listAllCategories", categoryService.getAll()); 
        mm.put("listCategoriesFooter", categoryService.getListFilter());
        return "customer/category"; 
    }
}
