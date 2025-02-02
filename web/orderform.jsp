<%@include  file="top.jsp" %>

<html>
<body background="WebImages/.jpg">
    <div style="margin-left:50px;width:92%;height:600px; background-color:rgba(256,256,256,0.5);">
<table width="100%"  style="height:50px;background-color:lightgray;font-family: cursive;border-radius: 50px">
    
</table>

    
<form action="order.jsp" method="post">
<table align="center"  style="border:inset;width:600px;margin-top:100px;background-color:rgba(25,100,156,0.3)" cellspacing="5px">
    <tr>
        <td colspan="4">    <h2>ORDER ITEM</h2>
</td>
    </tr>    
    <tr align="center">
<td>Houseno.</td>
<td><input type="text" name="Houseno." placeholder="HOUSE NO."  style="width:200px;border-radius: 30px"></td>
<td>colony</td>
<td><input type="text" name="colony" placeholder="COLONY/AREA/NEARBY PAlACE"  style="width:200px;border-radius: 30px"></td>

    </tr>

    
    
    <tr align="center">
</tr>

<tr align="center">
<td>pincode</td>
<td><input type="pincode" name="pincode" placeholder="PINCODE"  style="width:200px;border-radius: 30px"></td>
<td>city</td>
<td><input type="city" placeholder="city"  style="width:200px;border-radius: 30px;height:50px"></text></td>
</tr>
<tr align="center">
<td>Phoneno.</td>
<td><input type="phoneno." name="phoneno." placeholder="MOBILE NO."  style="width:200px;border-radius: 30px"></td>
<td>name</td>
<td><input type="name" name="name" placeholder="Full name"  style="width:200px;border-radius: 30px;height:50px"></td>
</tr>


<td colspan="4">
    <input type="submit" value="order now" style="width:200px;border-radius: 60px;height:30px;
           background-color:black;color:white;font-size:15px">
    <input type="reset" value="clear" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
   </tr>
</table>
    </form>
   

</body>
</html>
