package model;
// Generated Dec 8, 2019 2:11:48 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Products generated by hbm2java
 */
@Entity
@Table(name="Products"
    ,schema="dbo"
    ,catalog="Java_WebBanDoDien"
)
public class Products  implements java.io.Serializable {


     private int id;
     private Categories categories;
     private String name;
     private Double price;
     private Double promotionPrice;
     private String image;
     private String detail;
     private Integer quantity;
     private Boolean isProductNew;
     private Integer promotionPercent;
     private Set<OrderItems> orderItemses = new HashSet<OrderItems>(0);

    public Products() {
    }

	
    public Products(int id) {
        this.id = id;
    }
    public Products(int id, Categories categories, String name, Double price, Double promotionPrice, String image, String detail, Integer quantity, Set<OrderItems> orderItemses, Boolean isProductNew, Integer promotionPercent) {
       this.id = id;
       this.categories = categories;
       this.name = name;
       this.price = price;
       this.promotionPrice = promotionPrice;
       this.image = image;
       this.detail = detail;
       this.quantity = quantity;
       this.orderItemses = orderItemses;
       this.isProductNew = isProductNew;
       this.promotionPercent = promotionPercent;
    }
   
    @Id @GeneratedValue


    
    @Column(name="Id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="CategoryId")
    public Categories getCategories() {
        return this.categories;
    }
    
    public void setCategories(Categories categories) {
        this.categories = categories;
    }

    
    @Column(name="Name")
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    
    @Column(name="Price", precision=18, scale=0)
    public Double getPrice() {
        return this.price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }

    
    @Column(name="PromotionPrice", precision=18, scale=0)
    public Double getPromotionPrice() {
        return this.promotionPrice;
    }
    
    public void setPromotionPrice(Double promotionPrice) {
        this.promotionPrice = promotionPrice;
    }

    
    @Column(name="Image")
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }

    
    @Column(name="Detail")
    public String getDetail() {
        return this.detail;
    }
    
    public void setDetail(String detail) {
        this.detail = detail;
    }

    
    @Column(name="Quantity")
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    
    @Column(name="isProductNew", nullable = true)
    public Boolean getIsProductNew() {
        return isProductNew;
    }

    public void setIsProductNew(Boolean isProductNew) {
        this.isProductNew = isProductNew;
    }

    @Column(name="PromotionPercent", nullable = true)
    public Integer getPromotionPercent() {
        return promotionPercent;
    }

    public void setPromotionPercent(Integer promotionPercent) {
        this.promotionPercent = promotionPercent;
    }


@OneToMany(fetch=FetchType.LAZY, mappedBy="products")
    public Set<OrderItems> getOrderItemses() {
        return this.orderItemses;
    }
    
    public void setOrderItemses(Set<OrderItems> orderItemses) {
        this.orderItemses = orderItemses;
    }




}


