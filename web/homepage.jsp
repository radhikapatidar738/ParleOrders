
<html>   
<body background="WebImages/grocery.jpg">
    <div style="margin-left:50px;width:92%;height:10px;">
        <br>
  
<table width="100%"  style="height:50px;margin-bottom: 50px ;background-color:lightblue;font-family: cursive;border-radius: 50px">
    <tr align="center">
         
         <td  class="tdoption"><a href="aboutform.jsp">ABOUT</a></td>
         <td  class="tdoption"><a href="contactform.jsp">CONTACTS</a></td>
         <td  class="tdoption"><a href="serviceform.jsp">SERVICES</a></td>
    </tr>
    <tr>
        
        <td colspan="3">
            <h1 style="font-family:monotype corsiva;font-weight: bold;color:black;font-size:60px"><font size="150px">P</font>arle<font size="150px">O</font>rder</h1></td>
        </tr>
    
</table>
     
    <tr align="center">   
     
        <div style="margin-left:50px;width:92%;height:500px;background-image:url('WebImages/logo.png');">
            <script>
      function check()
      {
          if(frm.id.value.length==0)
              alert('id is required');
          if(frm.pass.value.length==0)
              alert('Password is required');
      }
     </script> 
            <form action='LoginCode.jsp'style='padding-top:350px;height:50px;border-radius:40px' form name="frm" method="post">
                <table style="width:500px;height:50px;background-color:rgba(255,256,256,0.5);margin-left:370px;border-radius:40px">
    <table align="center">
        
        <td>id</td>
          <%
              Cookie ck[]=request.getCookies();
              String name="";
              if(ck!=null)
              {
              for(int i=0;i<ck.length;i++)
              if(ck[i].getName().equals("websitename"))
              name=ck[i].getValue();
          }
          %>
          <td><input type="text"name="id" placeholder="Enter id here"style="width:200px;border-radius:30px;height:30px" value="<%=name%>"></td>  
    
   
   
    
    <td>password
    <td><input type="password"name="pass"placeholder="Enter password Here"style="width:200px;border-radius:30px;height:30px"></td> 
    <tr align="center">
        <td><img src="WebImages/logo.png" width="100px" height="100px"></td>
    </tr>
    <tr align="center">
      <td colspan="4">
    <input type="Submit" value="Sigin"style="width:100px;border-radius: 30px;margin-bottom:1500px; height:30px;
           background-color:black;color:white;font-size:15px" onClick="check()">
<a href="SignUpPage.jsp">New user</a>
        </td>
        </tr>      
</table>
              
    </form>
   </div>
</div>
</body>
</html>
