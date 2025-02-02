
<style>
    a{
        text-decoration: none;
        color:black;
        font-family: arial;
    }
    
    .tdoption:hover{
        background-color:gray;
        color:white;
    }
</style>
<%@include  file="top.jsp" %>

<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>

<%
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");

PreparedStatement st=con.prepareStatement(
        "select * from producttable");

ResultSet rs=st.executeQuery();
String  productId="";
String  Productname="";
String  productcategory="";
String productdescription="";
String productcost="";
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
while(rs.next())
{
 list1.add(rs.getString(1)  ) ;
 list2.add(rs.getString(2)  ) ;
 list3.add(rs.getString(3)  ) ;
 list4.add(rs.getString(4)  ) ;
 list5.add(rs.getString(5)  ) ;
 
}
%>


<br><br><br>
<h1>PRODUCT</H1>
<table width="80%" align="center" cellspacing="20"  style="background-color:gray;height:100px">
    <tr align="center" bgcolor="white">
        <td>USER ID</td>
        <td>PRODUCT NAME</td>
        <td>CATEGORY</td>
        <td>DESCRIPTION</td>
        <td>COST</td>
         
    </tr> 
<%
for(int i=0;i<list1.size();i++)
{
%>
    <tr align="center">
        <td><%=list1.get(i)%></td>
        <td><%=list2.get(i)%></td>
        <td><%=list3.get(i)%></td>
        <td><%=list4.get(i)%></td> 
        <td><%=list5.get(i)%></td>
       
    </tr>
    <%}
    %>
</table>

<input type=button value="PRINTOUT" onClick="window.print()/>

<form action="deleteproduct.jsp" method="post">
<table width="40%" align="center" cellspacing="20"  style="background-color:gray;height:100px">
    <tr>
        <td>
<!--           <input type="text" name="uId" placeholder="enter id here"  style="width:200px;border-radius: 30px"></td>-->
<select  style="width:300px"  name="product id">
    <option>select id</option>
    <%for(int i=0;i<list1.size();i++)
    {%>
    <option><%=list1.get(i)%></option>
    <%}%>
</select>
        </td>
           <td> <input type="submit" value="Delete" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
        </td>
    </tr>    
</table>
    </form>