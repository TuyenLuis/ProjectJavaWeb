/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.HashMap;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.*;
/**
 *
 * @author a5lhp
 */
@Controller
@RequestMapping(value = "shopping-cart")
public class ControllerCart {
    @Autowired
    private CartService cartService;
    
    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private UtilitiesService utilitiesService;
    
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public ReturnModel addToCart(ModelMap mm, HttpSession session, @ModelAttribute("productId") int productId, @ModelAttribute("quantity") int quantity) {
        HashMap<Integer, CartItem> shoppingCart = (HashMap<Integer, CartItem>) session.getAttribute("SHOPPING_CART");
        shoppingCart = cartService.addToCart(shoppingCart, productId, quantity);
        Double totalPrice = cartService.totalPrice(shoppingCart);
        session.setAttribute("SHOPPING_CART", shoppingCart);
        session.setAttribute("CART_TOTAL_PRICE", totalPrice);
        session.setAttribute("CART_TOTAL_NUM", shoppingCart.size());
        ReturnModel rm = new ReturnModel();
        rm.setReturnObject(shoppingCart);
        if (shoppingCart != null || shoppingCart.size() != 0) {
            rm.setStatus("success");
        } else {
            rm.setStatus("fail");
        }
        return rm;
    }
    
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public ReturnModel updateCartItem(ModelMap mm, HttpSession session, @ModelAttribute("productId") int productId, @ModelAttribute("quantity") int quantity) {
        HashMap<Integer, CartItem> shoppingCart = (HashMap<Integer, CartItem>) session.getAttribute("SHOPPING_CART");
        shoppingCart = cartService.updateCartItem(shoppingCart, productId, quantity);
        Double totalPrice = cartService.totalPrice(shoppingCart);
        session.setAttribute("SHOPPING_CART", shoppingCart);
        session.setAttribute("CART_TOTAL_PRICE", totalPrice);
        session.setAttribute("CART_TOTAL_NUM", shoppingCart.size());
        ReturnModel rm = new ReturnModel();
        rm.setReturnObject(shoppingCart);
        if (shoppingCart != null || shoppingCart.size() != 0) {
            rm.setStatus("success");
        } else {
            rm.setStatus("fail");
        }
        return rm;
    }
    
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public ReturnModel deleteCartItem(ModelMap mm, HttpSession session, @ModelAttribute("productId") int productId) {
        HashMap<Integer, CartItem> shoppingCart = (HashMap<Integer, CartItem>) session.getAttribute("SHOPPING_CART");
        shoppingCart = cartService.deleteCartItem(shoppingCart, productId);
        Double totalPrice = cartService.totalPrice(shoppingCart);
        session.setAttribute("SHOPPING_CART", shoppingCart);
        session.setAttribute("CART_TOTAL_PRICE", totalPrice);
        session.setAttribute("CART_TOTAL_NUM", shoppingCart.size());
        ReturnModel rm = new ReturnModel();
        rm.setReturnObject(shoppingCart);
        if (shoppingCart != null || shoppingCart.size() != 0) {
            rm.setStatus("success");
        } else {
            rm.setStatus("fail");
        }
        return rm;
    }
    
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String viewShoppingCart(ModelMap mm, HttpSession session) {
        utilitiesService.showMyShoppingCart(session);
        mm.put("listCategoryFilter", categoryService.getListFilter());  
        mm.put("listAllCategories", categoryService.getAll()); 
        mm.put("listCategoriesFooter", categoryService.getListFilter());
        return "customer/cart"; 
    }
}
