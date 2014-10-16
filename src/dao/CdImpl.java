package dao;

import java.math.BigDecimal;
import java.util.List;

import model.Category;
import model.Cd;

import org.hibernate.FlushMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.context.internal.ManagedSessionContext;

import util.HibernateUtil;

public class CdImpl extends GenericDaoImpl<Cd, BigDecimal>{
	 public List<Cd> getProductListByCategory(String categoryName) {
		List<Cd> cds;
		Category cat;
		CategoryImpl cateImpl = new CategoryImpl();
		String sql;
		Query query;
		
		sql = " FROM Category WHERE name=:categoryParameterValue";
		query = HibernateUtil.getSession().createQuery(sql).setParameter("categoryParameterValue", categoryName);
       
    	cat = cateImpl.findOne(query);
    	
    	sql = " FROM Cd WHERE categoryId=:categoryId"; 
    	query = HibernateUtil.getSession().createQuery(sql).setParameter("categoryId", cat.getId());
        
//		hibernateSession = HibernateUtil.getSession();
//		HibernateUtil.beginTransaction();
//		query = HibernateUtil.getSession().createQuery(sql).setParameter("categoryId", );
//		HibernateUtil.commitTransaction();
		cds = findMany(query);
		cds = (List<Cd>) query.list();
		
		return cds;
	 }
}