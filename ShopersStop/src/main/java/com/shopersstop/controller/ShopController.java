package com.shopersstop.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shopersstop.dao.UserDao;
import com.shopersstop.entity.*;

import com.shopersstop.context.AppContextFactory;



@Controller
public class ShopController {
	
	ApplicationContext ctx=AppContextFactory.getApplicationContext();
    
    
        @RequestMapping("/adminlogin") 
        public ModelAndView login(){



        return new ModelAndView("index");
}
        
    @RequestMapping("/adminwelcome")
     public ModelAndView processForm(@Validated Users loginForm, BindingResult result,
	 java.util.Map model, HttpServletRequest request) {
      ModelAndView mv;

      if (result.hasErrors()) {
       mv = new ModelAndView("adminlogin");
           
                }


       Users users=(Users)ctx.getBean("users");
       UserDao userdao=(UserDao)ctx.getBean("logindao");
       boolean userExists = userdao.loginCheck(loginForm.getName(), loginForm.getPassword());
      
       if(userExists){
       users.setName("users");
               
       HttpSession usession = request.getSession(true);
       usession.setAttribute("users", loginForm.getName());
               
	    mv = new ModelAndView("adminwelcome");
 
        
        
       }else{
    	   
	   result.rejectValue("uname","invaliduser");
	   mv = new ModelAndView("adminlogin");
}
       return mv;
     }
 /*   
     @RequestMapping("/getMails")
       public ModelAndView getList(){
       
       //Mail mails=(Mail)ctx.getBean("mail");
       MailDao maildao=(MailDao)ctx.getBean("MailDao");
          
       ModelAndView mv=new ModelAndView("mailList");
       
       
       List<Mail> getMail=maildao.getAllMails();
       mv.addObject("getMail", maildao);
       
      //  List<Mail> getList=maildao.getAllMails(mailtype, username);
        
      return mv;
*/
      
       }



                          
        

