<%@page import="projectpackage.SmsSender"%>
<%@page import="projectpackage.DbManager"%>
<%
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String contactno = request.getParameter("contactno");
    String emailaddress = request.getParameter("emailaddress");
    String enquirytext = request.getParameter("enquirytext");
    String msg = " Thanks for enquiry. We will contact you soon. Team HR (This is test message.) ";
    DbManager db = new DbManager();
    String enquirydt = db.getDate();
    
     String query="insert into enquiry (name,gender,address,contactno,emailaddress,enquirytext,enquirydt) values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"','"+enquirydt+"')";
    boolean res = db.executeNonQuery(query);
    if( res == true )
    {
        SmsSender ss = new SmsSender();
        ss.SendSms(contactno,msg);
        out.print("<script>alert('Your enquiry is submitted'); window.location.href='../index.jsp;'</script>");
        
    }
    else
    {
        out.print("<script>alert('Your enquiry is not submitted'); window.location.href='../enquiry.jsp;'</script>");
    }
%>
    