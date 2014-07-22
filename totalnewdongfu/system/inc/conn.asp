<%
set conn=Server.Createobject("adodb.connection")
conn.Open"Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath("../database/db.mdb")
%>