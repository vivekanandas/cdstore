package dao;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import org.hibernate.FlushMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.context.internal.ManagedSessionContext;

import util.HibernateUtil;

public abstract class GenericDaoImpl<T, ID extends Serializable> implements GenericDao<T, ID> {

    protected Session getSession() {
        return HibernateUtil.getSession();
    }

    public void save(T entity) {
    	Session hibernateSession = this.getSession();
    	hibernateSession.setFlushMode(FlushMode.MANUAL);
    	ManagedSessionContext.bind(hibernateSession);
    	hibernateSession.beginTransaction();
       
        hibernateSession.saveOrUpdate(entity);
       
        ManagedSessionContext.unbind(HibernateUtil.getSessionFactory());
        hibernateSession.flush();
        hibernateSession.getTransaction().commit();
        hibernateSession.close();
    }

    public void merge(T entity) {
    	Session hibernateSession = this.getSession();
    	hibernateSession.setFlushMode(FlushMode.MANUAL);
    	ManagedSessionContext.bind(hibernateSession);
    	hibernateSession.beginTransaction();
       
        hibernateSession.merge(entity);

        ManagedSessionContext.unbind(HibernateUtil.getSessionFactory());
        hibernateSession.flush();
        hibernateSession.getTransaction().commit();
        hibernateSession.close();
    }

    public void delete(T entity) {
    	Session hibernateSession = this.getSession();
    	hibernateSession.setFlushMode(FlushMode.MANUAL);
    	ManagedSessionContext.bind(hibernateSession);
    	hibernateSession.beginTransaction();
       
        hibernateSession.delete(entity);
        
        ManagedSessionContext.unbind(HibernateUtil.getSessionFactory());
        hibernateSession.flush();
        hibernateSession.getTransaction().commit();
        hibernateSession.close();
    }

    public List<T> findMany(Query query) {
        List<T> t;
        Session hibernateSession = this.getSession();
    	hibernateSession.setFlushMode(FlushMode.MANUAL);
    	ManagedSessionContext.bind(hibernateSession);
    	hibernateSession.beginTransaction();
       
        t = (List<T>) query.list();
        
        ManagedSessionContext.unbind(HibernateUtil.getSessionFactory());
        hibernateSession.flush();
        hibernateSession.getTransaction().commit();
        hibernateSession.close();
        return t;
    }

    public T findOne(Query query) {
        T t;
        Session hibernateSession = this.getSession();
    	hibernateSession.setFlushMode(FlushMode.MANUAL);
    	ManagedSessionContext.bind(hibernateSession);
    	hibernateSession.beginTransaction();
       
        t = (T) query.uniqueResult();
        
        ManagedSessionContext.unbind(HibernateUtil.getSessionFactory());
        hibernateSession.flush();
        hibernateSession.getTransaction().commit();
        hibernateSession.close();
        return t;
    }

    public List findAll(Class clazz) {
        List T = null;
        Session hibernateSession = this.getSession();
    	hibernateSession.setFlushMode(FlushMode.MANUAL);
    	ManagedSessionContext.bind(hibernateSession);
    	hibernateSession.beginTransaction();
       
        Query query = hibernateSession.createQuery("from " + clazz.getName());
        T = query.list();
        
        ManagedSessionContext.unbind(HibernateUtil.getSessionFactory());
        hibernateSession.flush();
        hibernateSession.getTransaction().commit();
        hibernateSession.close();
        return T;
    }
}