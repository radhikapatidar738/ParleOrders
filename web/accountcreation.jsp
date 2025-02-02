
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

<h1>ACCOUNT CREATION  FORM</h1>
<form action="accountcode.jsp" method="post">
<table   align=center style="border:dotted;width:300px;margin-top:50px;background-color:rgba(256,256,256,0.5)">

    <tr align="center">
        <td><img src="webimages/userlogin.jpg" width="100px" height="100px"></td>
    </tr>
    <tr align="center">
<td>Id</td>
</tr>

<tr align="center">
<td><input type="text" name="uId" 
placeholder="enter id here"  style="width:200px;border-radius: 30px"></td>
</tr>

<tr align="center">
<td>Password</td>
</tr>

<tr align="center">
<td><input type="password" name="pass" placeholder="enter password here"  style="width:200px;border-radius: 30px"></td>
</tr>


<tr align="center">
<td><select name="post"   style="width:200px;border-radius: 30px">
        <option>SELECT POST</option>
        <option>admin</option>
        <option>operator</option>
        <option>manager</option>
</select>
</td>
</tr>
<tr align="center">
<td colspan="2">
    <input type="submit" value="create account" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
    <input type="reset" value="clear" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
</td>
   </tr>
</table>
        </form>    




