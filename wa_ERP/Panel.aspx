<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="wa_ERP.Panel" %>

<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>/ ERP</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/fontawesome-all.min.css" rel="stylesheet" />

    <link href="Estilos/BarraVertical.css" rel="stylesheet" />

    

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper-utils.min.js"></script>
</head>

<body>

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <script>
            jQuery(function ($) {

                $(".sidebar-dropdown > a").click(function () {
                    $(".sidebar-submenu").slideUp(200);
                    if (
                        $(this)
                            .parent()
                            .hasClass("active")
                    ) {
                        $(".sidebar-dropdown").removeClass("active");
                        $(this)
                            .parent()
                            .removeClass("active");
                    } else {
                        $(".sidebar-dropdown").removeClass("active");
                        $(this)
                            .next(".sidebar-submenu")
                            .slideDown(200);
                        $(this)
                            .parent()
                            .addClass("active");
                    }
                });

                $("#close-sidebar").click(function () {
                    $(".page-wrapper").removeClass("toggled");
                });
                $("#show-sidebar").click(function () {
                    $(".page-wrapper").addClass("toggled");
                });

            });
        </script>
        <div class="page-wrapper chiller-theme toggled">
            <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
                <i class="fas fa-bars"></i>
            </a>
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content">
                    <div class="sidebar-brand">
                        <a href="#">pro sidebar</a>
                        <div id="close-sidebar">
                            <i class="fas fa-times"></i>
                        </div>
                    </div>
                    <div class="sidebar-header">
                        <div class="user-pic">
                            <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg"
                                alt="User picture">
                        </div>
                        <div class="user-info">
                            <span class="user-name">Jhon

                            <strong>Smith</strong>
                            </span>
                            <span class="user-role">Administrator</span>
                            <span class="user-status">
                                <i class="fa fa-circle"></i>
                                <span>Online</span>
                            </span>
                        </div>
                    </div>
                    <!-- sidebar-header  -->
                    <div class="sidebar-search">
                        <div>
                            <div class="input-group">
                                <input type="text" class="form-control search-menu" placeholder="Search...">
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- sidebar-search  -->
                    <div class="sidebar-menu">
                        <ul>
                            <li class="header-menu">
                                <span>General</span>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fa fa-tachometer-alt"></i>
                                    <span>Dashboard</span>
                                    <span class="badge badge-pill badge-warning">New</span>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li>
                                            <a href="#">Dashboard 1

                                            <span class="badge badge-pill badge-success">Pro</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">Dashboard 2</a>
                                        </li>
                                        <li>
                                            <a href="#">Dashboard 3</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span>E-commerce</span>
                                    <span class="badge badge-pill badge-danger">3</span>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li>
                                            <a href="#">Products
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">Orders</a>
                                        </li>
                                        <li>
                                            <a href="#">Credit cart</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="far fa-gem"></i>
                                    <span>Components</span>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li>
                                            <a href="#">General</a>
                                        </li>
                                        <li>
                                            <a href="#">Panels</a>
                                        </li>
                                        <li>
                                            <a href="#">Tables</a>
                                        </li>
                                        <li>
                                            <a href="#">Icons</a>
                                        </li>
                                        <li>
                                            <a href="#">Forms</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fa fa-chart-line"></i>
                                    <span>Charts</span>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li>
                                            <a href="#">Pie chart</a>
                                        </li>
                                        <li>
                                            <a href="#">Line chart</a>
                                        </li>
                                        <li>
                                            <a href="#">Bar chart</a>
                                        </li>
                                        <li>
                                            <a href="#">Histogram</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <asp:LinkButton ID="LinkButton1" runat="server" href="#" OnClick="LinkButton1_Click">
                                <i class="fa fa-globe"></i>
                                <span>Datos</span>
                                        </asp:LinkButton>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
                                  <span>Usuarios</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton3" runat="server">
                                  <span>Notificación</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton4" runat="server">
                                  <span>Corporativo</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton5" runat="server">
                                  <span>Empleados</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton6" runat="server">
                                  <span>Proveedores</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton7" runat="server">
                                  <span>Productos</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton8" runat="server">
                                  <span>Servicios</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton9" runat="server">
                                  <span>Clientes</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="UpdatePanel10" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>
                                                            <asp:LinkButton ID="LinkButton10" runat="server">
                                  <span>Centros</span>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <li class="header-menu">
                                <span>Extra</span>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-book"></i>
                                    <span>Documentation</span>
                                    <span class="badge badge-pill badge-primary">Beta</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-calendar"></i>
                                    <span>Calendar</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-folder"></i>
                                    <span>Examples</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->
                <div class="sidebar-footer">
                    <a href="#">
                        <i class="fa fa-bell"></i>
                        <span class="badge badge-pill badge-warning notification">3</span>
                    </a>
                    <a href="#">
                        <i class="fa fa-envelope"></i>
                        <span class="badge badge-pill badge-success notification">7</span>
                    </a>
                    <a href="#">
                        <i class="fas fa-cogs"></i>
                        <span class="badge-sonar"></span>
                    </a>
                    <a href="#">
                        <i class="fas fa-power-off"></i>
                    </a>
                </div>
            </nav>
            <!-- sidebar-wrapper  -->
            <main class="page-content">
                <div class="container-fluid">
                    <div class="col-md-12" runat="server">

                        <asp:UpdatePanel ID="upUsuario" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="card" runat="server" id="cardUsuario" visible="false">
                                    <div class="card-header bg-secondary">

                                        <div class="input-group">
                                            <asp:LinkButton ID="lkbUsuarioAgregar" CssClass="btn btn-light" runat="server" TabIndex="1" OnClick="lkbUsuarioAgregar_Click">
                                                                   Agregar <i class="fas fa-user-plus text-secondary fa-lg"></i>
                                            </asp:LinkButton>
                                            &nbsp;
                                                <asp:LinkButton ID="lkbUsuarioEdita" CssClass="btn btn-light" runat="server" TabIndex="2" OnClick="lkbUsuarioEdita_Click">
                                                                   Editar <i class="fas fa-user-edit text-secondary fa-lg"></i>
                                                </asp:LinkButton>
                                        </div>
                                        <br />
                                        <div class="input-group" runat="server" id="divBuscaUsuario" visible="false">

                                            <div class="form-group">
                                                <asp:DropDownList CssClass="form-control input-box" ID="sBusquedaUsuario" runat="server" TabIndex="3" required="required" AutoPostBack="true"></asp:DropDownList>
                                            </div>

                                            <asp:TextBox CssClass="form-control" ID="iUsuarioBuscar" runat="server" placeholder="*Buscar" TextMode="Search" TabIndex="4" onkeyup="this.value = this.value.toUpperCase();" required="required"></asp:TextBox>

                                            <ajaxToolkit:AutoCompleteExtender ID="aceUsuarioBuscar" runat="server" ServiceMethod="busca_pnl" MinimumPrefixLength="2" CompletionInterval="100" EnableCaching="true" CompletionSetCount="10" TargetControlID="iUsuarioBuscar" FirstRowSelected="false"></ajaxToolkit:AutoCompleteExtender>
                                            <span class="input-group-btn">
                                                <asp:LinkButton ID="lkbUsuarioBuscar" runat="server" CssClass="btn btn-light  form-control" TabIndex="5">
                                                                    <i class="fas fa-search text-secondary fa-lg"></i>
                                                </asp:LinkButton>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="table-responsive">
                                                <asp:GridView CssClass="table table-bordered table-condensed" ID="gvUsuarios" runat="server" RowStyle-VerticalAlign="Middle" AutoGenerateColumns="False" AllowPaging="True" CellPadding="3" ForeColor="Black" GridLines="Vertical" TabIndex="5" PageSize="5" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" HeaderStyle-CssClass="GridHeader">
                                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                                    <Columns>
                                                        <asp:BoundField DataField="UsuarioID" HeaderText="ID" SortExpression="UsuarioID" Visible="true" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn">
                                                            <HeaderStyle CssClass="hideGridColumn"></HeaderStyle>

                                                            <ItemStyle CssClass="hideGridColumn"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="CodigoUsuario" HeaderText="ID" SortExpression="CodigoUsuario" Visible="true" HeaderStyle-CssClass="align-content-center">

                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="nom_comp" HeaderText="NOMBRE COMPLETO" SortExpression="nom_comp">

                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="FechaRegistro" HeaderText="REGISTRO" SortExpression="FechaRegistro" DataFormatString="{0:dd-MM-yyyy}" HtmlEncode="false">

                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="ESTATUS">
                                                            <ItemTemplate>
                                                                <asp:DropDownList class="form-control" ID="ddlEstatusUsuarioID" runat="server">
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="">
                                                            <ItemTemplate>
                                                                <asp:LinkButton CssClass="" ID="LinkButton1" runat="server" CommandName="cnInformacionUsuario" ToolTip="Información de Usuario">
                                            <i class="fas fa-info text-secondary fa-lg"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>

                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="">
                                                            <ItemTemplate>
                                                                <asp:LinkButton CssClass="" ID="LinkButton2" runat="server" ToolTip="Guarda cambios de Información de Usuario">
                                            <i class="fas fa-save text-secondary fa-lg"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>

                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="">
                                                            <ItemTemplate>
                                                                <asp:LinkButton CssClass="" ID="LinkButton3" runat="server">
                                            <i class="fas fa-user-shield text-secondary fa-lg"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>

                                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="#CCCCCC" />
                                                    <HeaderStyle BackColor="#dc3545" ForeColor="White" Font-Bold="false" />
                                                    <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#000099" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                                </asp:GridView>
                                            </div>
                                        </div>
                                        <br />
                                        <div runat="server" id="divDatosUsuario" visible="false">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <asp:DropDownList CssClass="form-control input-box" ID="sAreaUsuario" runat="server" TabIndex="6" required="required" AutoPostBack="true" OnSelectedIndexChanged="sAreaUsuario_SelectedIndexChanged"></asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <select class="form-control" runat="server" id="sPerfilUsuario" tabindex="7" required="required">
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <select class="form-control" runat="server" id="sGeneroUsuario" tabindex="8" required="required">
                                                        </select>
                                                    </div>
                                                </div>
                                         
                                                <div class="form-group col-md-2">
                                                    <input type="date" class="form-control" runat="server" id="iNacimientoUsuario" required="required" placeholder="Fecha de Nacimiento" tabindex="9" value="null" />
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="form-group col-md-4">
                                                    <input type="text" class="form-control" runat="server" id="iNombresUsuario" required="required" placeholder="Nombre(s)" tabindex="10" onkeyup="this.value = this.value.toUpperCase();" />
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <input type="text" class="form-control" runat="server" id="iApaternoUsuario" required="required" placeholder="Apellido Paterno" tabindex="11" onkeyup="this.value = this.value.toUpperCase();" />
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <input type="text" class="form-control" runat="server" id="iAmaternoUsuario" required="required" placeholder="Apellido Materno" tabindex="12" onkeyup="this.value = this.value.toUpperCase();" />
                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="form-group col-md-3">
                                                    <input type="email" class="form-control" runat="server" id="iEmailPersonalUsuario" placeholder="Correo Personal" tabindex="13" required="required" />
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <asp:Button CssClass="btn btn-secondary form-control" ID="btnControlUsuario" runat="server" Text="Generar datos de control" TabIndex="14" />
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <input type="text" class="form-control" runat="server" id="iUsuario" required="required" placeholder="Usuario" tabindex="15" disabled="disabled" />
                                                </div>

                                                <div class="form-group col-md-2">
                                                    <input type="password" class="form-control" runat="server" id="iClave" required="required" placeholder="Contraseña" tabindex="16" disabled="disabled" />
                                                </div>
                                                <div class="form-group col-md-3">
                                                    <input type="email" class="form-control" runat="server" id="iEmailCorporativoUsuario" required="required" placeholder="Correo Corporativo" tabindex="17" disabled="disabled" />
                                                </div>
                                            </div>

                                            <div class="row">
                                            </div>
                                            <asp:Button CssClass="btn btn-secondary" ID="btnUsuarioG" runat="server" Text="Guardar" TabIndex="18" Enabled="false" />
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                            <Triggers>
                            </Triggers>
                        </asp:UpdatePanel>

                    </div>
                </div>
            </main>
            <!-- page-content" -->
        </div>
        <!-- page-wrapper -->
    </form>
</body>
</html>
