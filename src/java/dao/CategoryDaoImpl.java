/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.Categories;
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
public class CategoryDaoImpl implements CategoryDao{

    @Override
    public boolean create(Categories category) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(category);
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
    public boolean update(Categories category) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.update(category);
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
    public boolean delete(Categories category) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.delete(category);
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
    public Categories getById(int categoryId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Categories WHERE id = :categoryId");
            query.setParameter("categoryId", categoryId);
            Categories category = (Categories) query.uniqueResult();
            transaction.commit();
            return category;
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
    public List<Categories> getAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Categories");
            List<Categories> listCateogories = query.list();
            transaction.commit();
            return listCateogories;
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
