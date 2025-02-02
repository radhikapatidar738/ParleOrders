
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
<table width="100%"  style="height:50px;background-color:lightcyan;font-family: cursive;border-radius: 70px">
    <tr align="center" >
        <td  class="tdoption"><a href="homepage.jsp">HOME</a></td>
        <td class="tdoption"><a href="homepage.jsp">SIGN OUT</a></td>
    </tr>
</table>
<h1>Give Your Feedback here</h1>
<form action="feedback.jsp" method="post">
<table   align=center style="border:double;width:300px;margin-top:50px;background-color:rgba(256,200,256,0.5)">

    <tr align="center">
        <td><img src="WebImages/feedback2.jpg" width="200px" height="200px"></td>
    </tr>
    <tr align="center">



<td><input type="text" name="id" placeholder="enter id here"  style="width:200px;border-radius: 30px"></td>
</tr>

<tr align="center">
    
    
   <td><textArea name="Feedback" placeholder="write your feedback" style="width:200px;border-radius:30px"></textArea></td>
</tr>
<tr align="center">
    
<td><input type="Description" name="description" placeholder="enter description here"  style="width:200px;border-radius: 30px"></td>
</tr>
<input type=button value="PRINTOUT"/>

<tr align="center">
<td></td>
</tr>




<tr align="center">
<td colspan="2">
    <input type="submit" value="submit" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
    <input type="reset" value="clear" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
</td>
   </tr>
</table>
    </form>






