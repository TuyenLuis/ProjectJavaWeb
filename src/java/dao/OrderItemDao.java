/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.OrderItems;

/**
 *
 * @author a5lhp
 */
public interface OrderItemDao {
    public boolean create(OrderItems item);

    public boolean update(OrderItems item);

    public boolean delete(OrderItems item);

    public OrderItems findById(int orderItemId);

    public List<OrderItems> getListByOrder(int orderId);
}
