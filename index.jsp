<%-- 
    Document   : index
    Created on : 9 Δεκ 2011, 8:50:24 μμ
    Author     : dimos
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>




<%! double CafeTotalPrice = 0, CafeNumItems = 0;%>
<%! double SugarTotalPrice = 0, SugarNumItems = 0;%>
<%! double WaterTotalPrice = 0, WaterNumItems = 0;%>
<%! double SandwichTotalPrice = 0, SandwichNumItems = 0;%>
<HTML>
    <BODY>
        <H1>Shopping Cart</H1>
        <H2>Products List</H2>
        <FORM METHOD="POST">
            <TABLE BORDER="1">
                <TR>
                    <TD>No.</TD>
                    <TD>Item</TD>
                    <TD>Quantity</TD>
                    <TD>Price</TD>
                </TR>
                <TR>
                    <TD ALIGN="CENTER">0</TD>
                    <TD> Cafe</TD>
                    <TD><INPUT TYPE="text" NAME="numItems0">
                        <%
                            if (request.getParameter("numItems0")!=null && !request.getParameter("numItems0").isEmpty()) {
                                CafeNumItems = Integer.parseInt(request.getParameter("numItems0"));
                            }
                            CafeTotalPrice = CafeNumItems * 18.5;
                        %>
                        <%= CafeNumItems%>
                    </TD>
                    <TD ALIGN="RIGHT">18.5</TD>
                </TR>
                <TR>
                    <TD ALIGN="CENTER">1</TD>
                    <TD> Sugar</TD>
                    <TD><INPUT TYPE="text" NAME="numItems1">
                        <%
                            if (request.getParameter("numItems1")!=null && !request.getParameter("numItems1").isEmpty()) {
                                SugarNumItems = Integer.parseInt(request.getParameter("numItems1"));
                            }
                        SugarTotalPrice = SugarNumItems * 6.95;
                        %>
                        <%= SugarNumItems%>
                    </TD>
                    <TD ALIGN="RIGHT">6.95</TD>
                </TR>
                <TR>
                    <TD ALIGN="CENTER">2</TD>
                    <TD> Water</TD>
                    <TD><input type="text" name="numItems2">
                        <%
                            if (request.getParameter("numItems2")!=null && !request.getParameter("numItems2").isEmpty()) {
                                WaterNumItems = Integer.parseInt(request.getParameter("numItems2"));
                            }
                            WaterTotalPrice = WaterNumItems * 1.29;
                        %>
                        <%= WaterNumItems%>
                    </TD>
                    <TD ALIGN="RIGHT">1.29</TD>
                </TR>
                <TR>
                    <TR>
                    <TD ALIGN="CENTER">3</TD>
                    <TD> Sandwich</TD>
                    <TD><input type="text" name="numItems3">
                        <%
                            if (request.getParameter("numItems3")!=null && !request.getParameter("numItems3").isEmpty()) {
                                SandwichNumItems = Integer.parseInt(request.getParameter("numItems3"));
                            }
                            SandwichTotalPrice = SandwichNumItems * 4.5;
                        %>
                        <%= SandwichNumItems%>
                    </TD>
                    <TD ALIGN="RIGHT">4.50</TD>
                </TR>
                <TR>
                    <TD COLSPAN=4><B>Total: <%= WaterTotalPrice + SugarTotalPrice + CafeTotalPrice + SandwichTotalPrice%></TD>
                </TR>
            </TABLE>

            <INPUT TYPE="submit" VALUE="Update" />
        </FORM>

        <HR>
        <TABLE> 
            <TR> 
                <TD>
                    Thank you for using our services. We'll be glad to see you again! 
                </TD> 
            </TR>
        </TABLE>
        <a href="http://dl.dropbox.com/u/20430861/cart1.zip">Code Here</a>
        <a href="http://dimoslive.wordpress.com/2011/12/13/project-3-version-1/">Report Here</a>
        
    </BODY>
</HTML>
