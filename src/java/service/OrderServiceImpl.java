/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import model.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import dao.OrderDao;

/**
 *
 * @author a5lhp
 */
@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderDao orderDao;
    
    @Override
    public boolean create(Orders order) {
        return orderDao.create(order);
    }

    @Override
    public boolean update(Orders order) {
        return orderDao.update(order);
    }

    @Override
    public boolean delete(Orders order) {
        return orderDao.delete(order);
    }

    @Override
    public Orders findById(int orderId) {
        return orderDao.findById(orderId);
    }

    @Override
    public List<Orders> getAllOrder() {
        return orderDao.getAllOrders();
    }
}
