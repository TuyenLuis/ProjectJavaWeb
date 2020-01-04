/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.HashMap;
import java.util.Map;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import service.ProductService;
import org.springframework.stereotype.Service;

/**
 *
 * @author a5lhp
 */
@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private ProductService productService;
    
    @Override
    public HashMap<Integer, CartItem> addToCart(HashMap<Integer, CartItem> shoppingCart, int productId, int quantity) {
        if (shoppingCart == null) {
            shoppingCart = new HashMap<>();
        }
        
        Products product = productService.findById(productId);
        product.setCategories(null);
        product.setOrderItemses(null);
        if (product != null) {
            if (shoppingCart.containsKey(productId)) {
                CartItem cartItem = shoppingCart.get(productId);
                cartItem.setProduct(product);
                cartItem.setQuantity(cartItem.getQuantity() + quantity);
                shoppingCart.put(productId, cartItem);
            } else {
                CartItem cartItem = new CartItem();
                cartItem.setProduct(product);
                cartItem.setQuantity(quantity);
                shoppingCart.put(productId, cartItem);
            }
        }
        return shoppingCart;
    }

    @Override
    public HashMap<Integer, CartItem> updateCartItem(HashMap<Integer, CartItem> shoppingCart, int productId, int quantity) {
        if (shoppingCart == null) {
            return null;
        }
        Products product = productService.findById(productId);
        product.setCategories(null);
        product.setOrderItemses(null);
        if (product != null) {
            if (shoppingCart.containsKey(productId)) {
                CartItem cartItem = shoppingCart.get(productId);
                cartItem.setProduct(product);
                cartItem.setQuantity(quantity);
                shoppingCart.put(productId, cartItem);
            }
        }
        return shoppingCart;
    }

    @Override
    public HashMap<Integer, CartItem> deleteCartItem(HashMap<Integer, CartItem> shoppingCart, int productId) {
        if (shoppingCart == null) {
            return null;
        }
        
        Products product = productService.findById(productId);
        if (product != null) {
            if (shoppingCart.containsKey(productId)) {
                shoppingCart.remove(productId);
            }
        }
        return shoppingCart;
    }

    @Override
    public double totalPrice(HashMap<Integer, CartItem> shoppingCart) {
        double totalPrice = 0;
        if (shoppingCart != null) {
            for (Map.Entry<Integer, CartItem> list : shoppingCart.entrySet()) {
                Double price = list.getValue().getProduct().getPrice();
                Double promotionPrice = list.getValue().getProduct().getPromotionPrice();
                Double priceCart = promotionPrice != null ? promotionPrice : price;
                totalPrice += priceCart * list.getValue().getQuantity();
            }
        }
        return totalPrice;
    }
}
