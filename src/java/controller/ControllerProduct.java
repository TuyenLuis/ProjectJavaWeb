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
@RequestMapping(value = "product")
public class ControllerProduct {
    @Autowired
    private ProductService productService;
    
    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private UtilitiesService utilitiesService;
    
    @RequestMapping(value = "{productId}", method = RequestMethod.GET)
    public String viewProductDetai(ModelMap mm, HttpSession session, @PathVariable("productId") int productId) { 
        mm.put("product", productService.findById(productId));
        mm.put("listCategoryFilter", categoryService.getListFilter());  
        mm.put("listAllCategories", categoryService.getAll()); 
        mm.put("listCategoriesFooter", categoryService.getListFilter());
        utilitiesService.showMyShoppingCart(session);
        return "customer/product_detail";
    }
}
