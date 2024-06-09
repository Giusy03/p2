<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
    <title>Aggiungi prodotto</title>
</head>
<body>
    <%@ include file="../fragments/header.jsp" %>
    <%@ include file="../fragments/menu.jsp" %>

    <div id="main" class="clear">
        <h2>AGGIUNGI PRODOTTO</h2>
        <form action="../catalogo" method="post" id="myform">
            <input type="hidden" name="action" value="add">
            <input type="hidden" name="page" value="admin/GestioneCatalogo.jsp"><br><br>
            <div class="tableRow">
                <p>Nome:</p>
                <p><input type="text" name="nome" value="<%= escapeHtml(request.getParameter("nome")) %>" required></p>
            </div>
            <!-- Other form fields... -->
            <div class="tableRow">
                <p>Descrizione:</p>
                <p><input type="text" name="descrizione" value="<%= escapeHtml(request.getParameter("descrizione")) %>" required></p>
            </div>
            <!-- Other form fields... -->
            <div class="tableRow">
                <p>Descrizione dettagliata:</p>
                <p><input type="text" name="descDett" value="<%= escapeHtml(request.getParameter("descDett")) %>"></p>
            </div>
   
            
            <!-- Other form fields... -->
            <div class="tableRow">       
        
}
                <p></p>
                <p><input type="submit" value="aggiungi"></p>
            </div>
        </form>
    </div>

    <%@ include file="../fragments/footer.jsp" %>

    <%!
    public String escapeHtml(String input) {
        if (input == null) {
            return "";
        }
        return input
            .replaceAll("&", "&amp;")
            .replaceAll("<", "&lt;")
            .replaceAll(">", "&gt;")
            .replaceAll("\"", "&quot;")
            .replaceAll("'", "&#39;");
    }
    %>
</body>
</html>
