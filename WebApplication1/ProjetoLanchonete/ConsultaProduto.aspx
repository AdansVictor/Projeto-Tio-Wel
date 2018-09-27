<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaProduto.aspx.cs" Inherits="WebApplication1.ProjetoLanchonete.ConsultaProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Lanchonete do Tio Well</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="all,follow" />
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <!-- Font Awesome & Pixeden Icon Stroke icon font-->
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <link rel="stylesheet" href="../css/pe-icon-7-stroke.css" />
    <!-- Google fonts - Roboto Condensed & Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Condensed:700|Roboto:300,400" />
    <!-- lightbox-->
    <link rel="stylesheet" href="../css/lightbox.min.css" />
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../css/style.default.css" id="theme-stylesheet" />
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../css/custom.css" />
    <!-- Favicon-->
    <link rel="shortcut icon" href="../favicon.png" />
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>

    <body class ="home">



  <!-- navbar-->
    <header class="header">
      <div role="navigation" class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header"><a href="../Index.aspx" class="navbar-brand">Lanchonete do Tio Wel</a>
            <div class="navbar-buttons">
              <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
            </div>
          </div>
          <div id="navigation" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
              <li class="active"><a href="../Index.aspx">Home</a></li>
              <li><a href="/ProjetoLanchonete/ConsultaProduto.aspx">Produtos</a></li>
              <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Pedidos <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="ConsultaProduto.aspx">Produtos</a></li>
                  <li><a href="ConsultaCliente.aspx">Clientes</a></li>
                  <li><a href="Pedidos.aspx">Faça Aqui Seu Pedido</a></li>
                  <li><a href="ConsultaPedido.aspx">Consultar Pedidos</a></li>
                </ul>
              </li>
              <li><a href="/ProjetoLanchonete/CadastroCliente.aspx">Adcionar Clientes</a></li>
            </ul><a href="#" data-toggle="modal" data-target="#login-modal" class="btn navbar-btn btn-white pull-left"><i class="fa fa-sign-in"></i>Log in</a>
          </div>
        </div>
      </div>
    </header>





     

    <div id="carousel-home" data-ride="carousel" class="carousel slide carousel-fullscreen carousel-fade">
      <!-- Indicators-->
      <ol class="carousel-indicators">
        <li data-target="#carousel-home" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-home" data-slide-to="1"></li>
        <li data-target="#carousel-home" data-slide-to="2"></li>
      </ol>


              <!-- Wrapper for slides-->
      <div role="listbox" class="carousel-inner">
        <div style="background-image: url('../img/4.jpeg');" class="item active">
          <div class="overlay"></div>
          <div class="carousel-caption">
            <h1 class="super-heading">Lanchonete do Tio Wel</h1>
            
          </div>
        </div>
        <div style="background-image: url('../img/aa.jpeg');" class="item">
          <div class="overlay"></div>
          <div class="carousel-caption">
            <h1 class="super-heading">Lanchonete do Tio Wel</h1>
          </div>
        </div>
        <div style="background-image: url('../img/dd.jpeg');" class="item">
          <div class="overlay"></div>
          <div class="carousel-caption">
            <h1 class="super-heading">Lanchonete do Tio Wel</h1>          
          </div>
        </div>
      </div>
    </div>
    <section style="background-image: url('../img/gg.jpeg');" class="item">



        <%--Deletar--%>
                        


<div class="row">

 <div class ="container">
    <div class ="col-md12">
     <form id="form1" runat="server">
            <br />
     <table class ="table table-hover  btn btn-outline-success">
     <thead>
         <tr >
         <th>Produto</th>
         <th>Categoria</th>
         <th>Valor</th>
         <th>Quantidade Produto</th>
         <th>Data de Cadastro</th>
         </tr>
        <asp:TextBox  CssClass="form-control" placeholder="Qual Produto você quer excluir?" Width="250px" runat="server" id="prodCad"/>
                
          <asp:Button ID="btnDeletar" CssClass="btn btn-danger" runat="server" Text="Deletar Produto" OnClick="btnDeletar_Click" />
          <asp:TextBox runat="server"  CssClass="form-control" placeholder="Produto Deletado" id="resultado" Width="250px"/>
      </thead>
      <tbody id="resultProd" runat="server"></tbody>
      </table>
   </div>
 </div>

    
<%--cadastrar produtos--%>
    
     <br />
     <br />
     <br />

    <div class ="container">
        <div class ="col-md-12" >
            <div class ="campos" id ="campos" runat="server">
                <label>Produto a ser cadastrado:</label><asp:TextBox CssClass="form-control" runat="server" id="CadProd"/>
                <label>Categoria do Produto:</label><asp:TextBox CssClass="form-control" runat="server" id="txtProd"/>
                <label>Valor Unitário:</label><asp:TextBox CssClass="form-control" runat="server" id="txtVal"/>
                <label>Quantidade:</label><asp:TextBox CssClass="form-control" runat="server" id="txtQtd"/>
                <asp:Button ID="btnGravar" runat="server" OnClick="btnGravar_Click" CssClass="form-control btn btn-success" Text="Gravar Produto" />
                <asp:TextBox runat="server" placeholder="Produto Cadastrado" CssClass="form-control" id="TextBox1"/>
          </div>
        </div>
    </div>

    

</div>

    </form>




    </section>
    <section class="section--padding-bottom-small">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <div class="post">
              <div class="image"><a href="text.html"><img src="../img/8.jpeg" alt="" class="img-responsive" /></a></div>
              <h3><a href="text.html">Grandes</a></h3>
              <p class="post__intro">Outro prato muito popular no Reino Unido, o Bangers and Mash é um prato feito com salsichas e purê de batata. Vários tipos diferentes de salsicha podem ser escolhidos, como a de porco, e de porco com maçã, a salsicha de Lincolnshire ou a salsicha de Cumberland. Ele também costuma ser ser servido com molho de cebolas, principalmente no inverno. É popular nos pubs ingleses por ser de fácil e rápida preparação.</p>
              <p class="read-more"><a href="text.html" class="btn btn-ghost">Continue Lendo   </a></p>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="post">
              <div class="image"><a href="text.html"><img src="../img/7.jpg" alt="" class="img-responsive" /></a></div>
              <h3><a href="text.html">Delicias</a></h3>
              <p class="post__intro">Durante décadas foi o prato mais pedido das prefeitas da Inglaterra, e acabou se popularizando também em países como Nova Zelândia, Canadá, Irlanda e na África do Sul. No Brasil o fish ‘n’ chips também vem se popularizando nos últimos anos. Em Curitiba, por exemplo, vários bares, food trucks e lanchonetes de rua adotaram o prato típico em seus menus.</p>
              <p class="read-more"><a href="text.html" class="btn btn-ghost">Continue Lendo   </a></p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4">
            <div class="post">
              <div class="image"><a href="text.html"><img src="../img/5.jpeg" alt="" class="img-responsive" /></a></div>
              <h3><a href="text.html">Rit eget tincidunt condimentum</a></h3>
              <p class="post__intro">ellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
              <p class="read-more"><a href="text.html" class="btn btn-ghost">Continue Lendo     </a></p>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="post">
              <div class="image"><a href="text.html"><img src="../img/1.jpeg" alt="" class="img-responsive" /></a></div>
              <h3><a href="text.html">Tempor sit amet</a></h3>
              <p class="post__intro"> Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi.</p>
              <p class="read-more"><a href="text.html" class="btn btn-ghost">Continue Lendo     </a></p>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="post">
              <div class="image"><a href="text.html"><img src="../img/aa.jpeg" alt="" class="img-responsive" /></a></div>
              <h3><a href="text.html">Vestibulum erat wisi</a></h3>
              <p class="post__intro">ellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
              <p class="read-more"><a href="text.html" class="btn btn-ghost">Continue Lendo     </a></p>
            </div>
          </div>
        </div>
      </div>
    </section>









            <!--   *** SERVICES ***-->
    <section class="background-gray-lightest">
      <div class="container clearfix">
        <div class="row services">
          <div class="col-md-12">
            <h2>Services</h2>
            <p class="lead margin-bottom--medium"> Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
            <div class="row">
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-alarm"></i></div>
                  <h4 class="services-heading">Webdesign</h4>
                  <p>Fifth abundantly made Give sixth hath. Cattle creature i be don't them.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-cloud"></i></div>
                  <h4 class="services-heading">Print</h4>
                  <p>Advantage old had otherwise sincerity dependent additions. It in adapted natural.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-coffee"></i></div>
                  <h4 class="services-heading">SEO and SEM</h4>
                  <p>Am terminated it excellence invitation projection as. She graceful shy. </p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-monitor"></i></div>
                  <h4 class="services-heading">Consulting</h4>
                  <p>Fifth abundantly made Give sixth hath. Cattle creature i be don't them.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-signal"></i></div>
                  <h4 class="services-heading">Email Marketing</h4>
                  <p>Advantage old had otherwise sincerity dependent additions. It in adapted natural.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="box box-services">
                  <div class="icon"><i class="pe-7s-id"></i></div>
                  <h4 class="services-heading">UX &amp; UI</h4>
                  <p>Am terminated it excellence invitation projection as. She graceful shy. </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>



 <!-- portfolio-->
    <section id="portfolio" class="section--no-padding-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1>Nossos Produtos</h1>
                    <p class="lead margin-bottom--big">Venha nos visitar.</p>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row no-space">
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box"><a href="../img/1.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 1">
                        <img src="../img/1.jpeg" alt="" class="img-responsive" /></a></div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box"><a href="../img/2.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 2">
                        <img src="../img/2.jpeg" alt="" class="img-responsive" /></a></div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box"><a href="../img/gg.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 3">
                        <img src="../img/gg.jpeg" alt="" class="img-responsive" /></a></div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box"><a href="../img/4.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 4">
                        <img src="../img/4.jpeg" alt="" class="img-responsive" /></a></div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box"><a href="../img/head.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 5">
                        <img src="../img/head.jpeg" alt="" class="img-responsive" /></a></div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box"><a href="../img/7.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 6">
                        <img src="../img/7.jpg" alt="" class="img-responsive" /></a></div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box"><a href="../img/8.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 7">
                        <img src="../img/8.jpeg" alt="" class="img-responsive" /></a></div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box"><a href="../img/6.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 8">
                        <img src="../img/6.jpg" alt="" class="img-responsive" /></a></div>
                </div>
            </div>
        </div>
    </section>


          <footer class="footer">
      <div class="footer__copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <p>&copy;2018 Adans Victor Farias</p>
            </div>
            <div class="col-md-6">
              <p class="credit">Adans Victor Farias <a href="https://bootstrapious.com/free-templates" class="external"></a></p>
              <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- Javascript files-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.cookie.js"> </script>
    <script src="../js/lightbox.min.js"></script>
    <script src="../js/front.js"></script><!-- substitute:livereload -->
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID.-->
    <!---->
    <script>
      (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
      e=o.createElement(i);r=o.getElementsByTagName(i)[0];
      e.src='//www.google-analytics.com/analytics.js';
      r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
      ga('create','UA-XXXXX-X');ga('send','pageview');
    </script>
    </body>

</html>
