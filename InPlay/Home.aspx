<%@ Page Title="" Language="C#" MasterPageFile="~/InPlay.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="InPlay.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="head"style="width:1000px; height:300px;">
    </div>
    <div class="back" z-index:2;  >
        <div class="form"  z-index:1; > 
		<div id="header">
             
	<ul class="nav">
    <li> <asp:LinkButton ID="btnHome" runat="server" OnClick="btnHome_Click">HOME</asp:LinkButton>
    <li> <asp:LinkButton ID="btnNoti" runat="server" OnClick="btnNoti_Click">NOTICIAS</asp:LinkButton>
    <li> <asp:LinkButton ID="btnPosi" runat="server" OnClick="btnPosi_Click">POSICIONES</asp:LinkButton>
    <li> <asp:LinkButton ID="Bntadmin"  runat="server" OnClick="LinkButton1_Click">ADMINISTRADOR</asp:LinkButton>
	<ul>
	 <!--><-->
	<ul>
	<!--><-->
	</ul>
	</li>
	</ul>
	</li>
	
	<ul>
    <!--><-->
	</ul>
	</li>
	
    </ul>
    </div>
             

             <!-->slaider principal<-->
    <div class="slider">
	<ul>
	<li>
        <img src="Imagenes/NBA-Playoff-Tickets-2016-04.png" />
    </li>			
    <li>
        <img src="Imagenes/NBA-700x300.png" />
    </li>		
    <li>
        <img src="Imagenes/la-lakers-a-transfer-olan-lebron-james-in-bir-dakikalik-gelirini-kazanmak-icin-maasiniz-ne-kadar-olmali-700x300.jpg" />
    </li>
    <li>
        <img src="Imagenes/68351506_oakland_ca_-_june_12_kevin_durant_2335_of_the_golden_state_warriors_reacts_after_a_baske.jpg" />
    </li>
	</ul>
	</div>
        <!-->slaider principal<-->

         <!-->videos<-->
   <iframe class="video1" width="800" height="400" src="https://www.youtube.com/embed/exjMt3v81tA" frameborder="10" allow="accelerometer; 
    autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  
   <iframe class="video2" width="800" height="400" src="https://www.youtube.com/embed/Abt62jcdjkE" frameborder="10" allow="accelerometer; 
       autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <!-->videos<-->


            <!-->diseño del footer<-->
           
             <!-->diseño del footer<-->
     
    

        </div>
    </div>

    <div class="footer">

    </div>

</asp:Content>
