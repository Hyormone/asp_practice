<% 
response.codepage = 949
response.charset = "EUC-KR"
%>
<%
' connection 昔什渡什 持失
Set db = Server.CreateObject("ADODB.Connection")
' DB 伸奄
db.Open("DSN=localsqldb;UID=sa;PWD=1234;")
' 乞窮 汽戚斗 亜閃神奄
sql = "SELECT * from MyBoard ORDER BY num DESC"
' 傾坪球実 鯵端税 昔什渡什 持失
Set rs = Server.CreateObject("ADODB.Recordset")
' 走舛 汀軒稽 DB尻衣馬壱 傾坪球実拭 煽舌
rs.Open sql, db, 1
%>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/list.css">
    <title>惟獣毒</title>
</head>
<body>
    <div style="text-align: center;">
        <p style="color: #004080">
            <strong>
                MyBoard List
            </strong>
            &nbsp;
            &nbsp;
            &nbsp;
            <a href="write.html">
                <img src="https://img.freepik.com/free-vector/illustration-of-document-icon_53876-37007.jpg?w=1380&t=st=1677052922~exp=1677053522~hmac=5f8645b7a869e81c30d37d18ee7ea86d6ac8fbed6e250759cf90abe5ae812e86" width="40px">
            </a>
        </p>
    </div>
    <% 
    if rs.BOF or rs.EOF then
    %>
    <p>汽戚斗亜 蒸柔艦陥たたたたたたた.</p>
    <% else %>
        <div style="text-align: center;">
            <table class="list-table">
                <tr>
                    <td class="list-td-01">
                        腰硲
                    </td>
                    <td class="list-td-02">
                        越彰戚
                    </td>
                    <td class="list-td-02">
                        劾促
                    </td>
                    <td class="list-td-04">
                        薦鯉
                    </td>
                    <td class="list-td-01">
                        繕噺呪
                    </td>
                </tr>
                <% Do Until rs.EOF %>
                <tr>
                    <td class="list-td-01" style="color: black !important; background-color: #fff !important;">
                        <%=rs("num")%></td>
                    <td class="list-td-02" style="color: black !important; background-color: #fff !important;">
                        <a href="mailto:<%=rs("email")%>">
                            <%=rs("name")%>
                        </a>
                    </td>
                    <td class="list-td-02" style="color: black !important; background-color: #fff !important;"><%=rs("writeday")%></td>
                    <td class="list-td-04" style="color: black !important; background-color: #fff !important;">
                        <a href="content.asp?idx=<%=rs("board_idx")%>">
                            <%=rs("title")%>
                        </a>
                    </td>
                    <td class="list-td-01" style="color: black !important; background-color: #fff !important;"><%=rs("readnum")%></td>
                </tr>
                <%
                rs.MoveNext ' 陥製 傾坪球稽 戚疑
                loop ' 傾坪球 魁猿走 Loop 宜奄
                %>
                <% end if %>
            </table>
        </div>
</body>
</html>

<%
' 紫遂廃 鯵端級 乞砧 鋼崖 - 汽戚斗 箭鉦
rs.Close
db.Close
Set rs= Nothing
Set db = Nothing
%>