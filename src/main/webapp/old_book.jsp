<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.BookDtls" %><%--
  Created by IntelliJ IDEA.
  User: HARI
  Date: 6/15/2023
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>USER:OlD Book</title>
  <%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>
<c:if test="${(not empty succMsg)}">
    <div class="alert alert-success text-center">
        ${succMsg}
    </div>
    <c:remove var="succMsg" scope="session" />
</c:if>
<div class="container p-5">

    <table class="table table-striped">
        <thead class="bg-primary text-white">
        <tr>
            <th scope="col"> Book Name </th>
            <th scope="col"> Author </th>
            <th scope="col"> Price </th>
            <th scope="col"> Category </th>
            <th scope="col"> ISBN </th>
            <th scope="col"> Action </th>



        </tr>
        </thead>
        <tbody>
        <%
            User u= (User)session.getAttribute("userobj");
           String email=u.getEmail();
            BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
           List<BookDtls> list= dao.getBookByold(email, "Old");
           for(BookDtls b:list)
           {%>

        <tr>

            <td><%=b.getBookName()%></td>
            <td><%=b.getAuthor()%></td>
            <td><%=b.getPrice()%></td>
            <td><%=b.getBookCategory()%></td>
            <td><%=b.getISBN()%></td>

            <td>
                <a href="edit_oldbooks.jsp?em=<%=email%>&&id=<%=b.getBookId()%>"
                   class="btn btn-sm btn-primary"><i class="fas fa-edit"></i>Edit</a>

                <a href="delete_old_book?em=<%=email%>&&id=<%=b.getBookId()%>"
                   class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i> Delete</a>
            </td>

        </tr>
           <%}
        %>



        </tbody>
    </table>
    </div>


</div>
</body>
</html>
