import java.util.Date;
import java.util.List;

import model.Category;
import model.Cd;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import rest.CategoryService;
import dao.CategoryImpl;
import dao.CdImpl;


public class Main {

	public static void main(String[] args) {
		
//		
//		SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
//		Session session = sessionFactory.openSession();
//		session.beginTransaction();
//		
//		session.persist(cat);
//		
//		System.out.println(cat.getId());
//		
//		cat = (Category) session.get( Category.class, 1);
//		System.out.println(cat.getName());
//		
//		session.getTransaction().commit();
//		session.close();
//		sessionFactory.close();
		
		
//		List<Category> categories;
//		CategoryImpl cateimpl = new CategoryImpl();
//		categories = cateimpl.findAll(Category.class);
		
//		CategoryService cs = new CategoryService();
//		System.out.println(cs.getList());
		Cd cd = new Cd(3,"Lady Antebellum","Hillary Scott","2006",9.99);
		CdImpl cdImpl = new CdImpl();
		
		cdImpl.save(cd);
//		
				
		
	}

}
