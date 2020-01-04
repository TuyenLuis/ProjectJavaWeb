/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
@RequestMapping(value = "checkout")
public class ControllerOrder {
    @Autowired
    private OrderItemService orderItemService;
    
    @Autowired
    private OrderService orderService;
    
    @Autowired
    private CartService cartService;
    
    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private UtilitiesService utilitiesService;
    
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String viewCheckout(ModelMap mm, HttpSession session) {
        mm.put("listCategoryFilter", categoryService.getListFilter());  
        mm.put("listAllCategories", categoryService.getAll()); 
        mm.put("listCategoriesFooter", categoryService.getListFilter());
        utilitiesService.showMyShoppingCart(session);
        return "customer/checkout";
    }
    
    @RequestMapping(value = "/create-order", method = RequestMethod.POST)
    @ResponseBody
    public ReturnModel createOrder(ModelMap mm, HttpSession session, @ModelAttribute("listProductId") String listProductId,
            @ModelAttribute("customerName") String customerName, @ModelAttribute("customerPhone") String customerPhone, @ModelAttribute("customerEmail") String customerEmail, @ModelAttribute("customerAddress") String customerAddress) {
        ReturnModel rm = new ReturnModel();
        HashMap<Integer, CartItem> shoppingCart = (HashMap<Integer, CartItem>) session.getAttribute("SHOPPING_CART");
        if (shoppingCart == null) {
            rm.setStatus("fail");
            rm.setReturnObject(new String("Không có sản phẩm trong giỏ hàng"));
            return rm;
        }
        Orders order = new Orders();
        order.setCustomerAddress(customerAddress);
        order.setCustomerEmail(customerEmail);
        order.setCustomerName(customerName);
        order.setCustomerPhone(customerPhone);
        order.setOrderDate(new Timestamp(new Date().getTime()));
        order.setReceiveDate(null);
        orderService.create(order);
        String[] listProductIdStr = listProductId.split(",");
        Integer[] listProductIdInt = new Integer[listProductIdStr.length];
        for (int i = 0; i < listProductIdStr.length; i++) {
            listProductIdInt[i] = Integer.parseInt(listProductIdStr[i]);
        }
        List<Integer> listProduct = new ArrayList<Integer>();
        Collections.addAll(listProduct, listProductIdInt);
        
        for (Map.Entry<Integer, CartItem> entry : shoppingCart.entrySet()) {
            if (listProduct.contains(entry.getKey())) {
                OrderItems orderItem = new OrderItems();
                orderItem.setOrders(order);
                orderItem.setProducts(entry.getValue().getProduct());
                Double price = entry.getValue().getProduct().getPromotionPrice();
                Integer quantity = entry.getValue().getQuantity();
                orderItem.setPrice(price);
                orderItem.setQuantity(quantity);
                orderItem.setTotalPrice(price * quantity);
                boolean result = orderItemService.create(orderItem);
            }
        }
        
        for (int productId : listProduct) {
            shoppingCart.remove(productId);
        }
  
        Double totalPrice = cartService.totalPrice(shoppingCart);
        session.setAttribute("SHOPPING_CART", shoppingCart);
        session.setAttribute("CART_TOTAL_PRICE", totalPrice);
        session.setAttribute("CART_TOTAL_NUM", shoppingCart.size());
        
        rm.setStatus("success");
        rm.setReturnObject(shoppingCart);
        return rm;
    }
}
