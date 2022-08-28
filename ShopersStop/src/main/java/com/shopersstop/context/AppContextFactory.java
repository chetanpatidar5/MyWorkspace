package com.shopersstop.context;



import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppContextFactory {
	  public static ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	    public static ApplicationContext getApplicationContext(){ return ctx; }
	    
	    
	}
