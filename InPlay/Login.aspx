<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InPlay.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="StyleLogin.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="login">

        <div class="label">
        <h1>InPlay</h1>
        </div>

        <div class="txtbox">

            <div class="container">
            <asp:TextBox ID="txtAdmin" runat="server" CssClass="form-control" placeholder="Administrator"></asp:TextBox>
            </div>
            <br />
            <br />
            <div class="container">
            <asp:TextBox ID="txtContra" type="password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
            </div>
            <br />
            <br />
            <div class="botones">
                       <asp:LinkButton ID="LinkButton1" style="text-decoration:none" runat="server" OnClick="LinkButton1_Click">Soy Usuario</asp:LinkButton>            
                         <asp:LinkButton ID="LinkButton2" style="text-decoration:none" runat="server" OnClick="LinkButton2_Click">Administrador</asp:LinkButton>
            </div>
        </div>
    </div>  
        </div>
    </form>
</body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>
