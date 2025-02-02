
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
<table width="100%"  style="height:50px;background-color:lightgray;font-family: arial;border-radius: 50px">
    <tr align="center" >
        <td  class="tdoption"><a href="homepage.jsp">HOME</a></td>
 
        <td class="tdoption"><a href="homepage.jsp">SIGN OUT</a></td>
    </tr>
</table>
<h1>Complain form</h1>
<form action="complain.jsp" method="post">
<table   align=center style="border:double;width:300px;margin-top:50px;background-color:rgba(256,256,256,0.5)">

    <tr align="center">
        <td><img src="WebImages/email.png" width="200px" height="200px"></td>
    </tr>
    <tr align="center">
<td>cId</td>
</tr>

<tr align="center">
<td><input type="text" name="cId" placeholder="enter id here"  style="width:200px;border-radius: 30px"></td>
</tr>

<tr align="center">
<td></td>
</tr>

<tr align="center">
<td><input type="name" name="name" placeholder="enter name here"  style="width:200px;border-radius: 30px"></td>
</tr>

<tr align="center">
<td></td>
</tr>

<tr align="center">
<td><input type="category" name="category" placeholder="enter category here"  style="width:200px;border-radius: 30px"></td>
</tr>
<tr align="center">
<td><select name="category"   style="width:200px;border-radius: 30px">
        <option>SELECT category</option>
        <option>product quality</option>
        <option>customer care</option>
        <option>delivery</option>
</select>
</td>
</tr>


<tr align="center">
<td></td>
</tr>

<tr align="center">
<td><input type="description" name="description" placeholder="enter description here"  style="width:200px;border-radius: 30px"></td>
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






