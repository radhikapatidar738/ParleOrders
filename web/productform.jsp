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
     
        
    </tr>
</table>
<h1> product list</h1>
<form action="product.jsp" method="post">
<table   align=center style="border:double;width:300px;margin-top:50px;background-color:rgba(256,256,256,0.5)">

    <tr align="center">
        <td><img src="webimages/.jpg" width="100px" height="100px"></td>
    </tr>
    <tr align="center">
<td>Id</td>
</tr>

<tr align="center">
<td><input type="text" name="productId"value="<%=session.getAttribute("CALL")%>" placeholder="enter product id here"  style="width:200px;border-radius: 30px"></td>
</tr>

  <tr align="center">
<td>NAME</td>
</tr>

<tr align="center">
<td><input type="text" name="productname"value="<%=session.getAttribute("CALL")%>" placeholder="enter product id here"  style="width:200px;border-radius: 30px"></td>
</tr>
<tr align="center">
<td>product category</td>
</tr>
<tr align="center">
            <td><select name="productcategory"style="width:200px;border-radius: 30px">
                    <option>select category</option>>
                    <option>biscuits</option>
                    <option>snaks</option>
                    <option>chocalates</option>
                    <option>cakes</option>
                    <option>rusk</option>
                    <option>cereals</option>
                    


                    
        <select>
        </td>
</tr>


<tr align="center">
<td>description</td>
</tr>

<tr align="center">
    <td><input type ="text" name="productdescription"  style="width:200px;border-radius: 30px"></td>
</tr>

<tr align="center">
<td>cost</td>
</tr>

<tr align="center">
    <td><textarea  name="productcost"  style="width:200px;border-radius: 30px"></textArea></td>
</tr>

<tr align="center">
    <td colspan="2">
        <input type="submit" value="SEND" style="width:100px;border-radius:30px;height:30px;
        background-color:black;color:white;font-size:15px">
<input type="reset"value="CLEAR" style="width:100px;border-radius:30px;height:30px;
background-color:black;color:white;font-size:15px">

</td>
</tr>
</table>
</form>
</body>
</html>