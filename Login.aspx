<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginVB.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link href="Recursos/CSS/Estilo.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body class="bg-light">
    <div class="wrapper">
        <div class="formcontent"> 
            <form id="formulario_login" runat="server">
                 <div class="form-control">
                     <div class="col-md-6 text-center mb-5">
                           <asp:Label class="h2" ID="lblbienvenida" runat="server" Text="Bienvenido/a al Sistema"></asp:Label>
                     </div>
                     <div>
                         <asp:Label ID="Lblusuario" runat="server" Text="Usuario"></asp:Label>
                         <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Digite Su Usuario"></asp:TextBox>
                     </div>
                     <div>
                         <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
                         <asp:TextBox ID="tbtPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Digite Su Contraseña"></asp:TextBox>
                     </div>
                     <br />
                     <div class="row">
                         <asp:Label  runat="server" ID="LblError"></asp:Label>
                     </div>
                     <br />
                     <div class="row"">
                         <asp:Button ID="Btningresar" CssClass="btn btn-primary btn-blue" runat="server" Text="Ingresar" />
                     </div>
                 </div>
            </form>
        </div>
    </div>   
</body>
</html>
