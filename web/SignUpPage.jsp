<%@include  file="top.jsp" %>

<html>
<body background="WebImages/chaibuiscuit2.jpg">
    <div style="margin-left:50px;width:92%;height:600px; background-color:rgba(256,256,256,0.5);">
<table width="100%"  style="height:50px;background-color:lightgray;font-family: cursive;border-radius: 50px">
    <tr align="center" >
        <td>HOME</td>
        
    </tr>
</table>

    
<form action="NewUserCode.jsp" method="post">
<table align="center"  style="border:inset;width:600px;margin-top:100px;background-color:rgba(25,100,156,0.3)" cellspacing="5px">
    <tr>
        <td colspan="4">    <h2>NEW USER REGISTRATION FORM</h2>
</td>
    </tr>    
    <tr align="center">
<td>Full Name</td>
<td><input type="text" name="fNm" placeholder="enter your Full name here"  style="width:200px;border-radius: 30px"></td>
<td>Id</td>
<td><input type="text" name="uId" placeholder="enter id here"  style="width:200px;border-radius: 30px"></td>

    </tr>

    
    
    <tr align="center">
</tr>

<tr align="center">
<td>Password</td>
<td><input type="password" name="pass" placeholder="enter password here"  style="width:200px;border-radius: 30px"></td>
<td>Address</td>
<td><textarea  name="address" placeholder="enter address here"  style="width:200px;border-radius: 30px;height:100px"></textarea></td>
</tr>
<tr align="center">
<td>dob</td>
<td><input type="date" name="dob" placeholder="enter date of birth here"  style="width:200px;border-radius: 30px"></td>
<td>contact</td>
<td><input type=number name="contact" placeholder="mobile number"  style="width:200px;border-radius: 30px;height:100px"></textarea></td>
</tr>
<tr align="center">
<td>City</td>
<td><select name="city" style="width:200px;border-radius: 30px">
        <option>select city</option>
        <option>Indore</option>
        <option>Bhopal</option>
        <option>Pune</option>
</select
</td>
</tr>
<tr align="center">
<td>gender</td>
<td><input type="radio" name="gender" value="male"  style="width:20px;border-radius: 30px;height:15px; background-color:black;color:white;font-size:20px">male
<td><input type="radio" name="gender" value="female"  style="width:20px;border-radius: 30px;height:15px; background-color:black;color:white;font-size:20px">female

</td>
</tr>

<tr align="center">
<td colspan="4">
    <input type="submit" value="sigup" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
    <input type="reset" value="clear" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
   </tr>
</table>
    </form>
   

</body>
</html>
