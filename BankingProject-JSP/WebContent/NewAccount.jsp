<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Account</title>
<style>
#description
{
background-color:black;
padding:10px;
}
a{
color:grey;
padding:60px;
text-decoration:none;
}
a:hover{
    font-size: large;
    font-weight: bold;
    text-shadow: 2px 2px 2px gray;
    color:white;
}
h1
{
text-align:center;
color:red;
}
h4
{
text-align:center;
color:black;
}
h3
{
text-align:center;
color:black;
}

img
{
margin-left:680px;
}
marquee
{
border-top: 1px solid black;
border-bottom: 1px solid black;
padding:2px
}
fieldset
{
border:2px solid black;
width:20%;
padding:20px;
margin-top:50px;
margin-left:600px;
}
</style>
</head>
<body>
<img src="businesslogo.jpg-removebg-preview.png" alt="Error" width="150px" height="150px">
<div id="heading">
<h1>YCL BANK</h1>
<h4>EXTRAORDINARY SERVICES</h4>
</div>

<form id="description">
<a href="Home.jsp" target="blank" >Home</a>
<a href="NewAccount.jsp" target="blank" >NewAccount</a>
<a href="Balance.jsp" target="blank" >Balance</a>
<a href="Deposit.jsp" target="blank" >Deposit</a>
<a href="Withdraw.jsp" target="blank" >Withdraw</a>
<a href="Transfer.jsp" target="blank" >Transfer</a>
<a href="close.jsp" target="blank" >Close-A/C</a>
<a href="AboutUs.jsp" target="blank" >AboutUs</a>
</form>
<fieldset>
<form id= "open" action="NewAccountCode.jsp" method="post" name="acocunt" onsubmit="return validation()">
<h3>OPEN ACCOUNT FORM</h3>
<table>
<tr>
<td>Account Number:</td>
<td><input type="text" name="useraccountnumber"></td>
</tr>
<tr>
<td>Name:</td>
<td><input type="text" name="accountname"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="text" name="password"></td>
</tr>
<tr>
<td>C-password:</td>
<td><input type="text" name="conpassword"></td>
</tr>
<tr>
<td>Amount:</td>
<td><input type="text" name="amount"></td>
</tr>
<tr>
<td>Address:</td>
<td><input type="text" name="address"></td>
</tr>
<tr>
<td>Mobile-No:</td>
<td><input type="text" name="mobile"></td>
</tr>
<tr>
<td></td>
<td>
<input type="submit" value="CreateAccount">
</td>
</tr>
</table>
</form>
</fieldset>
<br>
<br>
<marquee>Bank Timings:Monday to Friday We Are Available From 9:00 AM To 6:30 PM and We are Available 24*7,Saturday and Sunday are Declared As Holidays </marquee>

<!-- Here we are writing the javascript code -->
<script>

function validation()
{
  let t1 = acocunt.useraccountnumber.value;
  let t2 = acocunt.accountname.value;
  let t3 = acocunt.password.value;
  let t4 = acocunt.conpassword.value;
  let t5 = acocunt.amount.value;
  let t6 = acocunt.address.value;
  let t7 = acocunt.mobile.value;

if(t1 == "")
	{
	alert("please enter account user name");
	return false;
	}
if(t2 == "")
   {
   alert("please enter account number");
   return false;
   }
if(t3 == "")
  {
   alert("please enter user password");
   return false;
  }
if(t4 == "")
 {
  alert("please confirm your password");
  return false;
  }
if(t5 == "")
  {
  alert("please enter amount");
  return false;
  }
if(t6 == "")
  {
  alert("please enter user address");
  return false;
  }
if(t7 == "")
  {
  alert("please enter user mobile number");
  return false;
  }
  return true;
  
}
</script>

</body>
</html>

