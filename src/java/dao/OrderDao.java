/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.util.List;
import model.*;
/**
 *
 * @author a5lhp
 */
public interface OrderDao {
    public boolean create(Orders order);
    
    public boolean update(Orders order);
    
    public boolean delete(Orders order);
    
    public Orders findById(int orderId);
    
    public List<Orders> getAllOrders();
}
