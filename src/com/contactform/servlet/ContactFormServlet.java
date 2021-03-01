package com.contactform.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.contactform.bean.ContactFormBean;
import com.contactform.dao.ContactFormDao;

/**
 * Servlet implementation class ContactFormServlet
 */


public class ContactFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ContactFormDao contactformDao;
	
	public void init() {
		contactformDao = new ContactFormDao();
	}
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String message = request.getParameter("message");

        ContactFormBean contactformbean = new ContactFormBean();
        contactformbean.setName(name);
        contactformbean.setEmail(email);
        contactformbean.setContact(contact);
        contactformbean.setMessage(message);
        
        
        try {
        	contactformDao.contactForm(contactformbean);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
        
        response.sendRedirect("contactform.jsp");
	}

}
