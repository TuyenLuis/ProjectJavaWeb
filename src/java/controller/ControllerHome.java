/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author a5lhp
 */

@Controller
@RequestMapping(value = "")
public class ControllerHome {
    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ProductService productService;
    
    @Autowired
    private UtilitiesService utilitiesService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String viewHome(ModelMap mm, HttpSession session) {
        mm.put("listProductSaleSlide", productService.getListSale(3));
        mm.put("listCategoryFilter", categoryService.getListFilter());  
        mm.put("listAllCategories", categoryService.getAll()); 
        mm.put("listCategoriesFooter", categoryService.getListFilter());
        mm.put("listProductSale", productService.getListSale(16));
        mm.put("listProductFeature", productService.getListProductFeatured(16));
        mm.put("listProductBestSeller", productService.getListBestSeller(12));
        mm.put("mapProductBestSellerByCategory", productService.getListProductBestSellerByCategory(2));
        utilitiesService.showMyShoppingCart(session);
        return "customer/index";
    }
    
    @RequestMapping(value = "home", method = RequestMethod.GET)
    public String viewHome1(ModelMap mm, HttpSession session) {
        mm.put("listProductSaleSlide", productService.getListSale(3));
        mm.put("listCategoryFilter", categoryService.getListFilter());  
        mm.put("listAllCategories", categoryService.getAll());
        mm.put("listCategoriesFooter", categoryService.getListFilter());
        mm.put("listProductSale", productService.getListSale(16));
        mm.put("listProductFeature", productService.getListProductFeatured(16));
        mm.put("listProductBestSeller", productService.getListBestSeller(12));
        mm.put("mapProductBestSellerByCategory", productService.getListProductBestSellerByCategory(2));
        utilitiesService.showMyShoppingCart(session);
        return "customer/index";
    }
}
