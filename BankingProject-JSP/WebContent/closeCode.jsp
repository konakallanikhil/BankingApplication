<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String useraccountnumber = request.getParameter("useraccountnumber");
String accountname = request.getParameter("accountname");
String password = request.getParameter("password");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	PreparedStatement ps = con.prepareStatement("select * from privatebank where useraccountnumber=? and accountname=? and password=? and status=1");
	ps.setString(1,useraccountnumber);
	ps.setString(2,accountname);
	ps.setString(3,password);
	ResultSet rs = ps.executeQuery();
	if(rs.next())
	{
		out.print("your AccountNumber"+useraccountnumber+"has been closed");
		
		PreparedStatement ps1 = con.prepareStatement("update privatebank set status=0 where useraccountnumber=?");
		
		ps1.setString(1,useraccountnumber);
		int j = ps1.executeUpdate();
	}
	else
	{
		out.print("your Enterd details are invalid");
	}
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>