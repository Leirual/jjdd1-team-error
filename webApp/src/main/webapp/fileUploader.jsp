<%--
  Created by IntelliJ IDEA.
  User: sebastian_los
  Date: 08.05.17
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="headersAndStyle.jsp" %>
<h1>Upload your files</h1>
<br>

<!-- Select Basic -->
<form method="post" action="/upload" class="form-horizontal" id="reg_form" enctype="multipart/form-data">
    <div class="form-group">
        <label class="col-md-4 control-label">Petrol file</label>
        <div class="col-md-6 selectContainer">
            <input type="petrolFile" class="form-control" name="petrolFile" />
            <asp:Label ID="Label3" runat="server" Text="Navigate to the file you wish to upload" CssClass="label_under_text"></asp:Label>
        </div>
    </div>
    <%--<div class="form-group">--%>
        <%--<label class="col-md-4 control-label">Currency info file</label>--%>
        <%--<div class="col-md-6 selectContainer">--%>
            <%--<input type="file" class="form-control" name="currencyInfoFile" />--%>
            <%--<asp:Label ID="Label3" runat="server" Text="Navigate to the file you wish to upload" CssClass="label_under_text"></asp:Label>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="form-group">--%>
        <%--<label class="col-md-4 control-label">Currency zip file</label>--%>
        <%--<div class="col-md-6 selectContainer">--%>
            <%--<input type="file" class="form-control" name="currencyZipFile" />--%>
            <%--<asp:Label ID="Label3" runat="server" Text="Navigate to the file you wish to upload" CssClass="label_under_text"></asp:Label>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="buttons">
        <button type="submit">Upload files</button>
    </div>
</form>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="footer.jsp" %>