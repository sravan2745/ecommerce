<%
	session = request.getSession(false);
	if(session!=null && session.getAttribute("email")!=null){
                       out.print(session.getAttribute(%>
                        <a href="#">
                            <%"email")%>
                                </%>
                        </a>
                        </%>
                        <%);
	
%>
                            <a href="Logout.jsp">Logout</a>
                            <%  }
	else{
		
%>
                                <a href="LoginSession.jsp">Login</a>
                                <% } %>
                                </%>
                            </%>
                            </%>