/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import model.OrderItems;
import dao.OrderItemDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author a5lhp
 */
@Service
public class OrderItemServiceImpl implements OrderItemService{
    @Autowired
    private OrderItemDao orderItemDao;
    
    @Override
    public boolean create(OrderItems item) {
        return orderItemDao.create(item);
    }

    @Override
    public boolean update(OrderItems item) {
        return orderItemDao.update(item);
    }

    @Override
    public boolean delete(OrderItems item) {
        return orderItemDao.delete(item);
    }

    @Override
    public OrderItems findById(int orderItemId) {
        return orderItemDao.findById(orderItemId);
    }

    @Override
    public List<OrderItems> getListByOrder(int orderId) {
        return orderItemDao.getListByOrder(orderId);
    }
}
