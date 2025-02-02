
<style>
    a{
        text-decoration: none;
        color:black;
        font-family: arial;
    }
    
    .tdoption:hover{
        background-color:powderblue;
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
        "select * from ordertable");

ResultSet rs=st.executeQuery();
String  Houseno="";
String  colony="";
String  pincode="";
String  city="";
String  phoneno="";
String  name="";
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
ArrayList list6=new ArrayList();
while(rs.next())
{
 list1.add(rs.getString(1)  ) ;
 list2.add(rs.getString(2)  ) ;
 list3.add(rs.getString(3)  ) ;
 list4.add(rs.getString(4)  ) ;
 
 list5.add(rs.getString(5)  ) ;
 
 list6.add(rs.getString(6)  ) ;
}
%>


<br><br><br>
<h1>ORDER DATA</H1>
<table width="80%" align="center" cellspacing="20"  style="background-color:gray;height:100px">
    <tr align="center" bgcolor="white">
        <td>HOUSE NO></td>
        <td>COLONY</td>
        <td>PINCODE</td>
        <td>CITY</td>
        <td>CONTACT</td>
        <td>NAME</td>
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
        <td><%=list6.get(i)%></td>
    </tr>
    <%}
    %>
</table>

          
    </form>