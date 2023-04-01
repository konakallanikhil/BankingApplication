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
String targetaccount = request.getParameter("targetaccount");
long transferamount = Long.parseLong(request.getParameter("transferamount"));
long amount = 0;
long amount2 = 0;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");
	PreparedStatement ps = con.prepareStatement("select *from privatebank where useraccountnumber=? and accountname=? and password=? and status=1");
	ps.setString(1,useraccountnumber);
	ps.setString(2,accountname);
	ps.setString(3,password);
	ResultSet rs = ps.executeQuery();
	out.print("Money has been sent from account 1"+"<br>");
	if(rs.next())
	{
		amount = rs.getLong(4);
		if(transferamount>amount)
		{
			out.print("Insufficient bouns"+"<br>");
		}
		else
		{
			out.print("Your previous Amount is :"+ amount+"<br>");
			out.print("Your Transfer Amount is :"+ transferamount+"<br>");

			amount = amount -  transferamount;
			out.print("Your present Amount is :"+ amount+"<br>");

			PreparedStatement ps1 = con.prepareStatement("update privatebank set amount=? where useraccountnumber=?");

			ps1.setLong(1,amount);
			ps1.setString(2,useraccountnumber);

			int i = ps1.executeUpdate();

			out.print(i+"Account sent sucessfully"+"<br>");
		}
	}
	else
	{
		out.print("please re-check yor password"+"<br>");
	}
	useraccountnumber =targetaccount;
	PreparedStatement ps2 = con.prepareStatement("select * from privatebank where useraccountnumber=? and status=1");
	ps2.setString(1,targetaccount);
	ResultSet rs1 = ps2.executeQuery();
	out.print("Money has been recived to account 2"+"<br>");
	if(rs1.next())
	{
		amount2 = rs1.getLong(4);
	}
	else
	{
	out.print("please re-check your account number"+"<br>");
	}
	out.print("Your previous Amount is :"+ amount2+"<br>");
	out.print("Your Transferd Amount is :"+ transferamount+"<br>");
	amount2 = amount2 + transferamount;
	out.print("Your present Amount is :"+ amount2+"<br>");
	PreparedStatement ps3 = con.prepareStatement("update privatebank set amount=? where useraccountnumber=?");

	ps3.setLong(1,amount2);
	ps3.setString(2,targetaccount);
	int j = ps3.executeUpdate();
	out.print(j+"Account recieved sucessfully"+"<br>");
	
	con.close();

    
}
catch(Exception e)
{
	out.print(e);
}
%>

</body>
</html>