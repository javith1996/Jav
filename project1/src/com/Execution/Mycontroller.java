/**
 * 
 */
package com.Execution;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.HttpServletBean;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.*;

/**
 * @author JAVITH PC
 *
 */
@org.springframework.stereotype.Controller
public class Mycontroller {
	@RequestMapping("/")
	public String Indexpage()
	{	
		return "login";
	}
	@Autowired
	HibernateTemplate hibernatetemplate;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@RequestMapping("/gotologin")
	public String linktoLogin(){
		return "login";
		
	}
	
	@RequestMapping("/login")
	public String UserLogin(HttpServletRequest req)
	{
		String Userid=req.getParameter("uname");
		String Password=req.getParameter("upass");
		int count=jdbcTemplate.queryForInt("select count(*) from register_tb where email=? and password=?",new String[]{Userid,Password});
		if(count>0){
			return "design";
		}
		else
		{
			return "invalid";
		}
		
	}
	@RequestMapping("/register")
	public String adduserdetails(){
		return "register";
	}
	@RequestMapping("/saveuserrecord")
	public String saveuserdetails(HttpServletRequest request)
	{
		String name=request.getParameter("ename");
		String email=request.getParameter("uname");
		String password=request.getParameter("upass");
		String mobile=request.getParameter("emob");
		
		
		adduser add=new adduser();
		add.setName(name);
		add.setEmail(email);
		add.setPassword(password);
		add.setMob(mobile);
		hibernatetemplate.persist(add);
		return "record";
		
		
	}
	@RequestMapping("/edit")
	public String designpage(){
		return "edit";
	}
	@RequestMapping("/delete")
	public String design(){
		return "delete";
	}
	@RequestMapping("/edituserrecord")
	
		public String edituserdetails(HttpServletRequest request)
		{
		    String userid=request.getParameter("userid");
			String name=request.getParameter("ename");
		    String email=request.getParameter("email");
			String password=request.getParameter("epass");
			String mobile=request.getParameter("emob");
		
			
			adduser add =new adduser();
			add.setUserid(Integer.parseInt(userid));
			add.setName(name);
			add.setEmail(email);
			add.setPassword(password);
			add.setMob(mobile);
			hibernatetemplate.update(add);
			return "record";
			
		}
	@RequestMapping("/view")
	
	public ModelAndView viewuser(){
	List<adduser> ed=hibernatetemplate.find(" from adduser");
	ModelAndView em=new ModelAndView();
	em.setViewName("List");
	em.addObject("List", ed);
	return em;
	}
	
		@RequestMapping("/deleteuser")
      public String delete(HttpServletRequest request){
			
			String userid=request.getParameter("userid");
			adduser e=new adduser();
			e.setUserid(Integer.parseInt(userid));
			hibernatetemplate.delete(e);
			return "design";
		}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	@RequestMapping("/design")
	public String designPage(){
		return "design";
		
	}

}
