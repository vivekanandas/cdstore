package dao;

import java.math.BigDecimal;
import java.util.List;

import model.Cd;

import org.hibernate.Query;

public class CdImpl extends GenericDaoImpl<Cd, BigDecimal>{
	
	public List<Cd> findMany(Query query) {
        List<Cd> cds;
        cds = (List<Cd>) query.list();
        return cds;
    }
}