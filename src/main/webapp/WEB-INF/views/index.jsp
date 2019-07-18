<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
    <form action="saveNote" method="POST">
    NoteId : <input type="text" name="noteId"/> <br><br>
    Title : <input type="text" name="noteTitle"/> <br><br>
    Content : <input type="text" name="noteContent"/> <br><br>
    Status : <input type="text" name="noteStatus"/> <br><br>
    <input type="submit" name="Submit">

    </form>


	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<table>
      <tr>
        <td>Note ID</td>
        <td>Title</td>
        <td>Content</td>
        <td>Status</td>
        <td>Created At</td>
      </tr>
      <c:forEach var="varList" items="${notes}">
      <tr>
        <td>${varList.noteId}</td>
        <td>${varList.noteTitle}</td>
        <td>${varList.noteContent}</td>
        <td>${varList.noteStatus}</td>
        <td>${varList.createdAt}</td>

      </tr>
      </c:forEach>



    </table>

</body>
</html>