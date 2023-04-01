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
long wiamount = Long.parseLong(request.getParameter("wiamount"));
long amount = 0;

try{
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");

PreparedStatement ps = con.prepareStatement("select * from privatebank where useraccountnumber=? and accountname=? and password=? and status=1");
ps.setString(1,useraccountnumber);
ps.setString(2,accountname);
ps.setString(3,password);
ResultSet rs = ps.executeQuery();
if(rs.next())
{
	amount = rs.getLong(4);
	out.print("Your previous Amount is :"+ amount+"<br>");
	if(wiamount>amount){
		out.print("Insufficient funds");
	   }
		else
		{
			amount = amount - wiamount;
			out.print("Your amount is:"+amount+"<br");
			out.print("Your wiamount is:"+wiamount);
			
		}
	}

else
{
	out.print("Your password is not correct and please re-check yor password");
}


PreparedStatement ps1 = con.prepareStatement("update privatebank set amount=? where useraccountnumber=?");

ps1.setLong(1,amount);
ps1.setString(2,useraccountnumber);

int i = ps1.executeUpdate();

out.print(i+"Your program is ready!!!!!");

con.close();

}

catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>