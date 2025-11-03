<%-- 
    Document   : infos_user
    Created on : 10 oct. 2023, 10:48:43
    Author     : bouchaib.lemaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%-- Déclaration des des beans qui sont utilisés --%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informations des utilisateurs</title>
    </head>
<body>
    <jsp:useBean id="user" class="fr.devavance.metier.beans.User" scope="request" />

    <h2>Informations utilisateur</h2>

    <table border="1" cellpadding="10" cellspacing="0" width="400">
        <tr>
            <td><b>Nom utilisateur</b></td>
            <td>${user.userName}</td>
        </tr>
        <tr>
            <td><b>Mot de passe</b></td>
            <td>••••••••</td> <!-- jamais affiché -->
        </tr>
        <tr>
            <td><b>Profil</b></td>
            <td>${user.profil}</td>
        </tr>
        <tr>
            <td><b>Authentification</b></td>
            <td>
                <c:choose>
                    <c:when test="${user.auth}">Connecté ✓</c:when>
                    <c:otherwise>Déconnecté ✗</c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>

    <br>
    <a href="accueil.jsp">← Retour</a>
</body>
</html>
