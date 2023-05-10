<header>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <nav>
        <ul>
            <li><a href="/chat-project-1.0.0/home">Home</a></li>
            <li><a href="/chat-project-1.0.0/message">Messages</a></li>
            <c:choose>
                <c:when test="${sessionScope.user == null || empty sessionScope.user}">
                    <li style="float: right;"><a href="/chat-project-1.0.0/login">Login</a></li>
                </c:when>
                <c:otherwise>
                    <li style="float: right;"><a href="/chat-project-1.0.0/logout">Log out</a></li>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${sessionScope.user != null and not empty sessionScope.user}">
                  <li style="float: right;"><span>Login: ${sessionScope.user.login} Role: ${sessionScope.user.role.getRoleName()}</span></li>
                </c:when>
                <c:otherwise>
                  <li style="float: right;"><span>Login: guest Role: unknown</span></li>
                </c:otherwise>
            </c:choose>

        </ul>
    </nav>
</header>