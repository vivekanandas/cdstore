package dao;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import util.HibernateUtil;

public abstract class GenericDaoImpl<T, ID extends Serializable> implements GenericDao<T, ID> {

    protected Session getSession() {
        return HibernateUtil.getSession();
    }

    public void save(T entity) {
        Session hibernateSession = this.getSession();
        hibernateSession.beginTransaction();
        hibernateSession.saveOrUpdate(entity);
        hibernateSession.getTransaction().commit();
    }

    public void merge(T entity) {
        Session hibernateSession = this.getSession();
        hibernateSession.merge(entity);
    }

    public void delete(T entity) {
        Session hibernateSession = this.getSession();
        hibernateSession.delete(entity);
    }

    public List<T> findMany(Query query) {
        List<T> t;
        t = (List<T>) query.list();
        return t;
    }

    public T findOne(Query query) {
        T t;
        t = (T) query.uniqueResult();
        return t;
    }

    public List findAll(Class clazz) {
        Session hibernateSession = this.getSession();
        List T = null;
        hibernateSession.beginTransaction();
        Query query = hibernateSession.createQuery("from " + clazz.getName());
        T = query.list();
        hibernateSession.getTransaction().commit();
        return T;
    }
}