<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>File Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {
	color: #1e5381;
	font-family: "Times New Roman", Times, serif;
	font-size: 25px;
}
.style2 {font-size: 15px}
.style4 {font-family: "Times New Roman", Times, serif}
.style5 {font-size: 20px}
.style6 {color: #0000FF}
.style9 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #000000; }
.style10 {color: #000000}
.style11 {color: #FF00FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Achieving Efficient and Secure Data Acquisition for Cloud-supported Internet</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li><a href="cs_login.jsp">Cloud Server</a></li>
          <li><a href="au_login.jsp">Authority</a></li>
          <li><a href="do_login.jsp">Data Owner</a></li>
          <li class="active"><a href="dr_login.jsp">Data Receiver</a></li>
        </ul>
      </div>
      <div class="style10"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="style10"></div>
      </div>
      <div class="style10"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style9">
        <div class="article">
          <h2 align="center" class="style13"> View File Details</h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream,java.math.*"%>
                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14,s15,s16,s17,s18;
	int i=0,j=1,k=0;
	String category = (String)application.getAttribute("dr_cat");
	int id = Integer.parseInt(request.getParameter("id"));
	String keyword = request.getParameter("key");	
	String rank = request.getParameter("rank");	

 try 
	{		
      	                    
					String query2="update cloud_files set rank='"+rank+"' where id="+id+" ";
					Statement st2=connection.createStatement();
					st2.executeUpdate(query2);
					
					String query3="update cloud_backup_files set rank='"+rank+"' where id="+id+" ";
					Statement st3=connection.createStatement();
					st2.executeUpdate(query3);
					
							
							String query="select * from cloud_files where id="+id+"" ;
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);//
								s13=rs.getString(13);
								s14=rs.getString(14);
								s15=rs.getString(15);
								s16=rs.getString(16);
								s17=rs.getString(17);
								s18=rs.getString(18);
								
				String decryptedValue1="",decryptedValue2="",decryptedValue3="",decryptedValue4="";
			
		    	String keys = "ef50a0ef2c3e3a5f";
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
				
				decryptedValue1 = new String(Base64.decode(s5.getBytes()));
				decryptedValue2 = new String(Base64.decode(s8.getBytes()));
				decryptedValue3 = new String(Base64.decode(s11.getBytes()));
				decryptedValue4 = new String(Base64.decode(s14.getBytes()));
				
				
				    
				
				
								
%>

<table width="560" border="0" align="center">
  
    <tr>
      <td colspan="2" width="173" height="39"><span class="style4 style22 style5 style6">File Name :- <span class="style9"><%=s2%></span></span></td>
    </tr>
	
	<tr>
      <td height="39"><span class="style4 style22 style5 style6">Accessible Role :- </span></td>
	  <td height="39"><%=s7%></td>
    </tr>
	
	<tr>
      <td height="39"><span class="style4 style22 style5 style6">Rank :- </span></td>
	  <td height="39"><%=s18%></td>
    </tr>
	
	<%
	if(s7.equalsIgnoreCase(category))
	{
	%>
	<tr>
      <td width="173" height="40"><span class="style4 style22 style5 style11">Block-1  </span></td>
      <td width="377">&nbsp;</td>
    </tr>
    <tr>
      <td width="173" height="40" bgcolor="#99FF99"><span class="style4 style22 style5 style6">Content </span></td>
      <td bgcolor="#FFCC00">
        <span class="style9 style4 style5 style10">
        <textarea name="text1" cols="40" rows="8" readonly="readonly"><%= decryptedValue1 %></textarea>
        </span> </td>
    </tr>
    <tr>
      <td height="40" bgcolor="#99FF99"><span class="style4 style22 style5 style6">MAC-1</span></td>
      <td bgcolor="#FFCC00"><span class="style9"><%=s6%></span></td>
    </tr>
	
	<%
	}
	
	if(s10.equalsIgnoreCase(category))
	{
	%>
	<tr>
      <td width="173" height="41"><span class="style4 style22 style5 style11">Block-2 </span></td>
      <td width="377">&nbsp;</td>
    </tr>
    <tr>
      <td width="173" height="40" bgcolor="#99FF99"><span class="style4 style22 style5 style6">Content </span></td>
      <td bgcolor="#FFCC00">
        <span class="style9 style4 style5 style10">
        <textarea name="text2" cols="40" rows="8" readonly="readonly"><%= decryptedValue2 %></textarea>
        </span> </td>
    </tr>
    <tr>
      <td height="37" bgcolor="#99FF99"><span class="style4 style22 style5 style6">MAC-2 </span></td>
      <td bgcolor="#FFCC00"><span class="style9"><%=s9%></span></td>
    </tr>
	
	<%
	}
	
	if(s13.equalsIgnoreCase(category))
	{
	%>
	<tr>
      <td width="173" height="40"><span class="style4 style22 style5 style11">Block-3</span></td>
      <td width="377">&nbsp;</td>
    </tr>
	
    <tr>
      <td width="173" height="40" bgcolor="#99FF99"><span class="style4 style22 style5 style6">Content </span></td>
      <td bgcolor="#FFCC00">
        <span class="style9 style4 style5 style10">
        <textarea name="text3" cols="40" rows="8" readonly="readonly"><%= decryptedValue3 %></textarea>
        </span> </td>
    </tr>
    <tr>
      <td height="41" bgcolor="#99FF99"><span class="style4 style22 style5 style6">MAC-3 </span></td>
      <td bgcolor="#FFCC00"><span class="style9"><%=s12%></span></td>
    </tr>
	
	<%
	}
	
	if(s16.equalsIgnoreCase(category))
	{
	%>
	<tr>
      <td width="173" height="35"><span class="style4 style22 style5 style11">Block-4 </span></td>
      <td width="377">&nbsp;</td>
    </tr>
    <tr>
      <td width="173" height="40" bgcolor="#99FF99"><span class="style4 style22 style5 style6">Content </span></td>
      <td bgcolor="#FFCC00">
        <span class="style9 style4 style5 style10">
        <textarea name="text4" cols="40" rows="8" readonly="readonly"><%= decryptedValue4 %></textarea>
        </span> </td>
    </tr>
    <tr>
      <td height="42" bgcolor="#99FF99"><span class="style4 style22 style5 style6">MAC-4 </span></td>
      <td bgcolor="#FFCC00"><span class="style9"><%=s15%></span></td>
    </tr>
	
	<%
	}
	%>   
    
	
  </table>

<%								
		
			                }
							
							
							
							
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>
		  
		  
		  
		  
		  
		  
		  
		  
		<p>&nbsp;</p>
		<p align="right"><a href="dr_search_data.jsp" class="style2"> Back </a></p> 
        </div>
      </div>
      <div class="sidebar">
	  <p class="style9">&nbsp;</p>
        <div class="gadget">
          <p class="star style1">Data Receiver Menu</p>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="dr_main.jsp">Data Receiver Main</a></li>
            <li><a href="dr_login.jsp">Log Out</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
