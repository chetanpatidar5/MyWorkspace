package com.shopersstop.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserDao {

	 @Autowired	
	SessionFactory sessionFactory;//HibernateUtils.getSessionFactory();
	org.hibernate.Session session=null;
	
	public boolean loginCheck(String id, String password) {
		session=sessionFactory.openSession();
        boolean userFound=false;
        String SQL_QUERY =" from Users as l where l.id=? and l.password=?";
		org.hibernate.query.Query query = session.createQuery(SQL_QUERY);
	    query.setParameter(0,id);
		query.setParameter(1,password);
		List list = query.list();

			if ((list != null) && (list.size() > 0)) {
				userFound= true;
			}

			session.close();
			return userFound;  
        
}
}
