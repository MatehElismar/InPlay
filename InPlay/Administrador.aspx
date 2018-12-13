<%@ Page Title="" Language="C#" MasterPageFile="~/InPlay.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="InPlay.Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="back">
        <div class="form">
             
            <div class="controles1">
                <div class="container">
                <asp:Label ID="Label1" runat="server" Text="Guardar Noticias"></asp:Label>
                    </div>
                <div class="container">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Titulo"></asp:TextBox>
                </div>
                  <div class="container">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Detalle" TextMode="MultiLine"></asp:TextBox>
                      </div>
                  <div class="container">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Autor"></asp:TextBox>
                      </div>
                  <div class="container">
                      <asp:FileUpload ID="FileUpload1" runat="server" Width="500px" />
                      </div>
                <div class="btn2">
                 </div>
                 <div class="btn1">
                <asp:Button ID="Button2" runat="server" Text="Guardar" CssClass="btn btn-success" Width="144px" OnClick="Button2_Click" />
                     <br />
                     <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                 </div>
            </div>

                      <div class="controles2">
                <div class="container">
                <asp:Label ID="Label2" runat="server" Text="Actualizar Noticias"></asp:Label>
                    </div>

                 <div class="container">
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Buscar"></asp:TextBox>
                 </div>
                 <div class="btnbus">
                 <asp:Button ID="Button5" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="Button5_Click" />
                 </div>
                          <br />
                          
                          <br />
                <div class="container">
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </div>
                  <div class="container">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Detalle" TextMode="MultiLine"></asp:TextBox>
                      </div>
                  <div class="container">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Autor"></asp:TextBox>
                      </div>
                  <div class="container">
                      <asp:FileUpload ID="FileUpload2" runat="server" Width="500px" />
                      </div>
                <div class="btn3">
                 </div>
                 <div class="btn4">
                <asp:Button ID="Button4" runat="server" Text="Actualizar" CssClass="btn btn-success" Width="144px" OnClick="Button4_Click" />
                 </div>

                 <div class="container">
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </div>
            </div>

            <div class="Foot">
                
            </div>

        </div>
    </div>

</asp:Content>
