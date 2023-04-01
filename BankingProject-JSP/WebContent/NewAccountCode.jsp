<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
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
String conpassword = request.getParameter("conpassword");
long amount = Long.parseLong(request.getParameter("amount"));
String address = request.getParameter("address");
long mobile =  Long.parseLong(request.getParameter("mobile"));



if(password.equals(conpassword))
{
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");

		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");

		PreparedStatement ps = con.prepareStatement("insert into privatebank values(?,?,?,?,?,?,?)");

		ps.setString(1,useraccountnumber);
		ps.setString(2,accountname);
		ps.setString(3,password);
		ps.setLong(4,amount);
		ps.setString(5,address);
		ps.setLong(6,mobile);
		ps.setLong(7,1);

		int i = ps.executeUpdate();

		out.print(i+"Data has been sucessfully inserted");

		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
}
else
{
	out.print("please verify your password and re-enter again");
}


%>
</body>
</html>