package model;
// Generated Jan 4, 2020 3:58:57 PM by Hibernate Tools 4.3.1

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Orders generated by hbm2java
 */
@Entity
@Table(name = "Orders",
         schema = "dbo",
         catalog = "Java_WebBanDoDien"
)
public class Orders implements java.io.Serializable {

    private int id;
    private Date orderDate;
    private Double shipmentPrice;
    private Date receiveDate;
    private String customerName;
    private String customerPhone;
    private String customerAddress;
    private String customerEmail;
    private Set<OrderItems> orderItemses = new HashSet<OrderItems>(0);

    public Orders() {
    }

    public Orders(int id) {
        this.id = id;
    }

    public Orders(int id, Date orderDate, Double shipmentPrice, Date receiveDate, String customerName, String customerPhone, String customerAddress, String customerEmail, Set<OrderItems> orderItemses) {
        this.id = id;
        this.orderDate = orderDate;
        this.shipmentPrice = shipmentPrice;
        this.receiveDate = receiveDate;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.customerAddress = customerAddress;
        this.customerEmail = customerEmail;
        this.orderItemses = orderItemses;
    }

    @Id @GeneratedValue

    @Column(name = "Id", unique = true, nullable = false)
    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "OrderDate", length = 23)
    public Date getOrderDate() {
        return this.orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    @Column(name = "ShipmentPrice", precision = 18, scale = 0)
    public Double getShipmentPrice() {
        return this.shipmentPrice;
    }

    public void setShipmentPrice(Double shipmentPrice) {
        this.shipmentPrice = shipmentPrice;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "ReceiveDate", length = 23)
    public Date getReceiveDate() {
        return this.receiveDate;
    }

    public void setReceiveDate(Date receiveDate) {
        this.receiveDate = receiveDate;
    }

    @Column(name = "CustomerName")
    public String getCustomerName() {
        return this.customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    @Column(name = "CustomerPhone", length = 20)
    public String getCustomerPhone() {
        return this.customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    @Column(name = "CustomerAddress")
    public String getCustomerAddress() {
        return this.customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    @Column(name = "CustomerEmail")
    public String getCustomerEmail() {
        return this.customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "orders")
    public Set<OrderItems> getOrderItemses() {
        return this.orderItemses;
    }

    public void setOrderItemses(Set<OrderItems> orderItemses) {
        this.orderItemses = orderItemses;
    }

}
