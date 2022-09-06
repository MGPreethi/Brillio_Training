<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Customer Management Application</title>
</head>
<body>
	<center>
		<h1>Customer Management</h1>
        <h2>
        	<a href="new">Add New Customer</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Customers</a>
        	
        </h2>
	</center>
    <div align="center">
		<c:if test="${customer != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${customer == null}">
			<form action="insert" method="post">
		</c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${customer != null}">
            			Edit Customer
            		</c:if>
            		<c:if test="${customer == null}">
            			Add New Customer
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${customer != null}">
        			<input type="hidden" name="id" value="<c:out value='${customer.id}' />" />
        		</c:if>            
            <tr>
                <th>Customer Name: </th>
                <td>
                	<input type="text" name="name" size="45"
                			value="<c:out value='${customer.name}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Customer Email: </th>
                <td>
                	<input type="text" name="email" size="45"
                			value="<c:out value='${customer.email}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Country: </th>
                <td>
                	<input type="text" name="country" size="15"
                			value="<c:out value='${customer.country}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Phone: </th>
                <td>
                	<input type="text" name="phone" size="15"
                			value="<c:out value='${customer.phone}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>
