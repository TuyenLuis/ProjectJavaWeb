/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import model.Categories;
import model.Products;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import util.HibernateUtil;

/**
 *
 * @author a5lhp
 */
@Repository
public class ProductDaoImpl implements ProductDao{

    @Override
    public boolean create(Products product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(product);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return false;
    }

    @Override
    public boolean update(Products product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.update(product);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return false;
    }

    @Override
    public boolean delete(Products product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.delete(product);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return false;
    }

    @Override
    public Products findById(int productId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Products WHERE id = :productId");
            query.setParameter("productId", productId);
            Products product = (Products) query.uniqueResult();
            transaction.commit();
            return product;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }

    @Override
    public List<Products> getListProductByCategory(int categoryId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Products as pr WHERE pr.categories.id = :categoryId");
            query.setParameter("categoryId", categoryId);
            List<Products> listProduct = query.list();
            transaction.commit();
            return listProduct;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }

    @Override
    public List<Products> getListProductByCategoryAndLimit(int categoryId, int limit) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Products as pr WHERE pr.categories.id = :categoryId");
            query.setParameter("categoryId", categoryId);
            query.setMaxResults(limit);
            List<Products> listProduct = query.list();
            transaction.commit();
            return listProduct;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }

    @Override
    public List<Products> getListProductFeatured(int limit) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Products as pr WHERE pr.isProductNew = 1");
            query.setMaxResults(limit);
            List<Products> listProducts = query.list();
            transaction.commit();
            return listProducts;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }

    @Override
    public List<Products> getListSale(int limit) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("from Products WHERE promotionPercent IS NOT NULL ORDER BY promotionPercent DESC");
            query.setMaxResults(limit);
            List<Products> listProducts = query.list();
            transaction.commit();
            return listProducts;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }

    @Override
    public int totalItem() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("SELECT COUNT(*) FROM Products");
            int total = (int) query.uniqueResult();
            transaction.commit();
            return total;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return 0;
    }

    @Override
    public List<Products> getListBestSeller(int limit) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createSQLQuery("EXEC Usp_GetBestSeller").addEntity(Products.class);
//            query.setMaxResults(limit);
            List<Products> listProducts = query.list();
            transaction.commit();
            return listProducts;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }

    @Override
    public HashMap<Categories, List<Products>> getListProductBestSellerByCategory(int limit) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createSQLQuery("EXEC Usp_GetCategoriesBestSeller").addEntity(Categories.class);
//            query.setMaxResults(limit);
            List<Categories> listCategory = query.list();
            Iterator iterator = listCategory.iterator();
            HashMap<Categories, List<Products>> map = new HashMap<Categories, List<Products>>();
            while (iterator.hasNext()) {
                Categories category = (Categories) iterator.next();
                query = session.createSQLQuery("EXEC Usp_GetProductsBestSellerByCategory :CategoryId").addEntity(Products.class).setParameter("CategoryId", category.getId());
                List<Products> listProducts = query.list();
                map.put(category, listProducts);
            }
            return map;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }

    @Override
    public List<Products> getAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Products");
            List<Products> listProducts = query.list();
            transaction.commit();
            return listProducts;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return null;
    }
}
