<%@include  file="SecurityGuard.jsp" %>

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
<table width="100%"  style="height:50px;background-color:lightgray;font-family: arial;border-radius: 400px">
    <tr align="center" >
        
        <td  class="tdoption"><a href="homepage.jsp">HOME</a></td>
        <td class="tdoption"><a href="complainform.jsp">COMPLAIN HERE</a></td>
        <td class="tdoption"><a href="queryform.jsp">QUERY</a></td>
        <td class="tdoption"><a href="feedbackform.jsp">GIVE FEEDBACK</a></td>
        <td class="tdoption"><a href="viewproduct.jsp">PRODUCT</a></td>
               
        <td class="tdoption"><a href="DestroySession.jsp">SIGN OUT</a></td>
        <tr align="center">
            
 
<font color="darkpink">Welcome &nbsp;&nbsp;&nbsp;<%=session.getAttribute("fnm") %></font>   
    </tr>
</table>
    
    <table>
<tr>
        <td colspan="3"><img src="WebImages/buis.webp" width="350px" height="350px" margin-left="250px">
        <tr> <td  class="tdoption"><a href="orderform.jsp">ORDERNOW</a></tr>
       
        <td colspan="3"><img src="WebImages/rol.jpg" width="350px" height="350px" margin-left="500px"></td>
        
        <td colspan="3"><img src="WebImages/kurkure.webp" width="350px" height="350px" margin-right="50px"></td></tr>
 <tr>
     
        
 <br>
        <td  class="tdoption"><a href="orderform.jsp">ORDERNOW</a></td>
        <br>
        <td  class="tdoption"><a href="orderform.jsp">ORDERNOW</a></td><tr/>
        
        
 
<br>
<table>
<tr>
 <td colspan="3"><img src="WebImages/chip.png" width="300px" height="300px"></td>
<br> 
 <td colspan="3"><img src="WebImages/aata.webp" width="300px" height="300px"></td>
 <br>
 </tr>
        <br>
 <tr>
     
        <td  class="tdoption"><a href="orderform.jsp">ORDERNOW</a></td>
 
        <td  class="tdoption"><a href="orderform.jsp">ORDERNOW</a></td></tr>       
    
</table>

