package dao;

import java.math.BigDecimal;
import java.util.List;

import org.hibernate.Query;

import model.Category;

public class CategoryImpl extends GenericDaoImpl<Category, BigDecimal>{
	
	public List<Category> findMany(Query query) {
        List<Category> categories;
        categories = (List<Category>) query.list();
        return categories;
    }
}
