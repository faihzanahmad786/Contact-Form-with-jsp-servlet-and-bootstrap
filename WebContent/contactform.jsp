<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.contactform.dao.ContactFormDao"%>
<%@page import="com.contactform.bean.ContactFormBean"%>
<%@page import="com.contactform.servlet.ContactFormServlet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <title>Contact form</title>
    </head>
    <body>
        
        <section class="container">
        <h1 class="display-4" align="center">Contact Form</h1>
        </section>
        
        <form class="container" action="<%=request.getContextPath()%>/contactform" method="post">
        <div class="mb-3">
        <label for="exampleInputName1" class="col-auto">Name</label>
        <input type="text" class="col-auto" id="exampleInputName1" aria-describedby="nameHelp" name="name">
        </div>
        <div class="mb-3">
        <label for="exampleInputEmail1" class="col-auto">Email</label>
        <input type="email" class="col-auto" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
        </div>
        <div class="mb-3">
        <label for="exampleInputTel1" class="col-auto">Contact Number</label>
        <input type="tel" class="col-auto" id="exampleInputTel1" aria-describedby="telphoneHelp" name="contact">
        </div>
        <div class="mb-3">
        <label for="exampleInputMessage1" class="col-auto">Message</label>
        <input type="text" class="form-control" id="exampleInputMessage1" name="message">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        
    </body>
</html>