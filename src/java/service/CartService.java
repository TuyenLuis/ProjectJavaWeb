/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import java.util.HashMap;
import model.*;

/**
 *
 * @author a5lhp
 */
public interface CartService {
    public HashMap<Integer, CartItem> addToCart(HashMap<Integer, CartItem> shoppingCart, int productId, int quantity);
    
    public HashMap<Integer, CartItem> updateCartItem(HashMap<Integer, CartItem> shoppingCart, int productId, int quantity);
    
    public HashMap<Integer, CartItem> deleteCartItem(HashMap<Integer, CartItem> shoppingCart, int productId);
    
    public double totalPrice(HashMap<Integer, CartItem> shoppingCart);
}
