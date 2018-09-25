<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaCliente.aspx.cs" Inherits="WebApplication1.ProjetoLanchonete.ConsultaCliente" %>

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
                  <li><a href="#">Faça Aqui Seu Pedido</a></li>
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
    <section class="background-gray-lightest negative-margin">

          </section>



    <%--CONSULTA DE CLIENTES--%>

     <div class ="container">
        <div class ="col-md12">
        <form id="form1" runat="server">
        <div>

            <h1>Consulta de Clientes</h1>
            <br />
            <table>
            <thead>
                <tr>
                    <th>Nome Completo</th>                   
                    <th>CPF</th>
                    <th>Endereço</th>
                    <th>Telefone</th>
                    <th>Data de nascimento</th>
                    <th>Data de Cadastro</th>
                </tr>
            </thead>
            
                <tbody id="resultProd" runat="server"></tbody>
            </table>
        </div>
    </form>
            </div>
            </div>



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
            <div class="box"><a href="../img/1.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 1"><img src="../img/1.jpeg" alt="" class="img-responsive" /></a></div>
          </div>
          <div class="col-lg-3 col-sm-4 col-xs-6">
            <div class="box"><a href="../img/2.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 2"><img src="../img/2.jpeg" alt="" class="img-responsive" /></a></div>
          </div>
          <div class="col-lg-3 col-sm-4 col-xs-6">
            <div class="box"><a href="../img/1.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 3"><img src="../img/1.jpeg" alt="" class="img-responsive" /></a></div>
          </div>
          <div class="col-lg-3 col-sm-4 col-xs-6">
            <div class="box"><a href="../img/4.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 4"><img src="../img/4.jpeg" alt="" class="img-responsive" /></a></div>
          </div>
          <div class="col-lg-3 col-sm-4 col-xs-6">
            <div class="box"><a href="../img/5.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 5"><img src="../img/5.jpeg" alt="" class="img-responsive" /></a></div>
          </div>
          <div class="col-lg-3 col-sm-4 col-xs-6">
            <div class="box"><a href="../img/7.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 6"><img src="../img/7.jpg" alt="" class="img-responsive" /></a></div>
          </div>
          <div class="col-lg-3 col-sm-4 col-xs-6">
            <div class="box"><a href="../img/8.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 7"><img src="../img/8.jpeg" alt="" class="img-responsive" /></a></div>
          </div>
          <div class="col-lg-3 col-sm-4 col-xs-6">
            <div class="box"><a href="../img/1.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 8"><img src="../img/1.jpeg" alt="" class="img-responsive" /></a></div>
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
