package com.shopersstop.context;




import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;


import com.shopersstop.entity.Users;




public class HibernateUtil {

	
	private static SessionFactory factory;
	
	
	static{
		
			Configuration cfg=new AnnotationConfiguration();
		    cfg.configure("hibernate.cfg.xml");
		    cfg.addAnnotatedClass(Users.class);
		 //   cfg.addAnnotatedClass();
		    factory=cfg.buildSessionFactory();
		    
				
			}
		}
	

