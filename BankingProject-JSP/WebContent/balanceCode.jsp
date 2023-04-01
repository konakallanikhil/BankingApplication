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

try{
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pdb","pdb");

PreparedStatement ps = con.prepareStatement("select * from privatebank where useraccountnumber=? and accountname=? and password=? and status=?");

ps.setString(1,useraccountnumber);
ps.setString(2,accountname);
ps.setString(3,password);
ps.setInt(4,1);

ResultSet rs = ps.executeQuery();

ResultSetMetaData rsmd = rs.getMetaData();
out.print("<html><body><table border ='1'>");
int n = rsmd.getColumnCount();
for( int i = 1 ; i <= n ; i++)
	out.print("<td><font color ='blue' size ='3'>"+"<br>"+rsmd.getColumnName(i));
    out.print("<tr>");
if(rs.next())
	for( int i = 1 ; i <= n ; i++)
		out.print("<td><br>"+rs.getString(i));
         out.print("<tr>");
        out.print("<table><body><html>");

con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}

%>

</body>
</html>