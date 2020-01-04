package model;
// Generated Jan 4, 2020 3:58:57 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * OrderItems generated by hbm2java
 */
@Entity
@Table(name = "OrderItems",
         schema = "dbo",
         catalog = "Java_WebBanDoDien"
)
public class OrderItems implements java.io.Serializable {

    private int id;
    private Orders orders;
    private Products products;
    private Double price;
    private Integer quantity;
    private Double totalPrice;

    public OrderItems() {
    }

    public OrderItems(int id) {
        this.id = id;
    }

    public OrderItems(int id, Orders orders, Products products, Double price, Integer quantity, Double totalPrice) {
        this.id = id;
        this.orders = orders;
        this.products = products;
        this.price = price;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
    }

    @Id
    @GeneratedValue

    @Column(name = "Id", unique = true, nullable = false)
    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "OrderId")
    public Orders getOrders() {
        return this.orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ProductId")
    public Products getProducts() {
        return this.products;
    }

    public void setProducts(Products products) {
        this.products = products;
    }

    @Column(name = "Price", precision = 18, scale = 0)
    public Double getPrice() {
        return this.price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Column(name = "Quantity")
    public Integer getQuantity() {
        return this.quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Column(name = "TotalPrice", precision = 18, scale = 0)
    public Double getTotalPrice() {
        return this.totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

}
