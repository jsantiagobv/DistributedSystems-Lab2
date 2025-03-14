<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Interesting Picture</title>
    </head>
    <body>
        <% if (request.getAttribute("pictureURL") != null) { %>
        <h1>Here is an interesting picture of a <%= request.getParameter("searchWord")%></h1><br>
        <% if (request.getParameter("searchWord").equals("Andy")) { %>
        <% for( int j = 0; j < 10; j++){ %>
        <img src="https://upload.wikimedia.org/wikipedia/commons/0/09/Andrew_Carnegie%2C_by_Theodore_Marceau.jpg"><br><br>
        <% }} else { %>
        <img src="<%= request.getAttribute("pictureURL")%>"><br><br>
        <% } %>
        <% } else { %>
        <h1>An interesting picture of a <%= request.getParameter("searchWord")%> could not be found</h1><br>
        <% } %>
         <form action="getAnInterestingPicture" method="GET">
            <label for="letter">Type another word.</label>
            <input type="text" name="searchWord" value="" /><br>
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>

