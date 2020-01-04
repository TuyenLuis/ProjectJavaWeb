package service;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.CartService;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author a5lhp
 */
@Service
public class UtilitiesServiceImpl implements UtilitiesService{
    @Autowired
    private CartService cartService;
    
    @Override
    public void showMyShoppingCart(HttpSession session) {
        HashMap<Integer, CartItem> shoppingCart = (HashMap<Integer, CartItem>) session.getAttribute("SHOPPING_CART");
        if (shoppingCart == null) {
            shoppingCart = new HashMap<>();
        }
        Double totalPrice = cartService.totalPrice(shoppingCart);
        session.setAttribute("SHOPPING_CART", shoppingCart);
        session.setAttribute("CART_TOTAL_PRICE", totalPrice);
        session.setAttribute("CART_TOTAL_NUM", shoppingCart.size());
    }
}
