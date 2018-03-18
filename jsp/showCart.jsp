<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="exp6_7.*,java.util.LinkedHashMap,java.util.Map"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="cart" class="exp6_7.CartBook" scope="session"/> 
<jsp:useBean id="booklib" class="exp6_7.Booklib" scope="session"/>
<HTML>
<body>
	<h1>结算页面</h1>
	
	 <c:choose>	
	   <c:when test="${!empty(cart.map)}">
	      <table border="1">
	       <tr>
            <td>书籍</td>
            <td>单价</td>
            <td>数量</td>
            <td>小计</td>
           </tr>
		   <c:forEach var="item" items="${cart.map}"> 
		      <tr>
			    <td><img src='${item.value.book.picture}'></td>
			    <td>${item.value.book.price}元</td>
			    <td>${item.value.quantity}本 </td>
			    <td>${item.value.price}元</td>
			  </tr>
		   	</c:forEach>
	      </table>
	   	       一共${cart.price}元<br>
	    </c:when>
	  		<c:otherwise>
	   	 		 <tr>购物车为空</tr>
	   	  	</c:otherwise>
	 </c:choose>
 	<a href="index.jsp">返回继续采购</a>  
  </body>
</html>
