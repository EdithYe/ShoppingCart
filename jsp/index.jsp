<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="exp6_7.*"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="cart" class="exp6_7.CartBook" scope="session" />
<jsp:useBean id="booklib" class="exp6_7.Booklib" />
<HTML>
<body>
   <br>
    <img src="img/cart.jpg" height="60px" width="60px">
    <a href="showCart.jsp">结算</a>
   <br>       
  <table border="1">
		<tr>
			<td><img src='${booklib.map["1"].picture}'></td>
			<td><img src='${booklib.map["2"].picture}'></td>
			<td><img src='${booklib.map["3"].picture}'></td>
			<td><img src='${booklib.map["4"].picture}'></td>
		</tr>
		<tr>
			<td>${booklib.map["1"].price}元</td>
			<td>${booklib.map["2"].price}元</td>
			<td>${booklib.map["3"].price}元</td>
			<td>${booklib.map["4"].price}元元</td>
		</tr>
		<tr>
			<td>
				<a href="addbook.do?id=1">采购</a>
				<c:if test='${ cart.map!=null && cart.map["1"]!=null }'>
				  ${cart.map["1"].quantity}本
				<a href="delbook.do?id=1">减少</a>
				</c:if>
			</td>
			<td>
				<a href="addbook.do?id=2">采购</a>
			    <c:if test='${ cart.map!=null && cart.map["2"]!=null }'>
				  ${cart.map["2"].quantity}本
				<a href="delbook.do?id=2">减少</a>
				</c:if>
			</td>
			<td>
				<a href="addbook.do?id=3">采购</a>
				<c:if test='${ cart.map!=null && cart.map["3"]!=null }'>
				  ${cart.map["3"].quantity}本
				<a href="delbook.do?id=3">减少</a>
				</c:if>
			</td>
			<td>
				<a href="addbook.do?id=4">采购</a>
			    <c:if test='${ cart.map!=null && cart.map["4"]!=null }'>
				  ${cart.map["4"].quantity}本
				<a href="delbook.do?id=4">减少</a>
				</c:if>
			</td>
		</tr>
</body> 
</html>
