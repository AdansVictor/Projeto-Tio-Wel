<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Lanchonete do Tio Wel </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome & Pixeden Icon Stroke icon font-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/pe-icon-7-stroke.css">
    <!-- Google fonts - Roboto Condensed & Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Condensed:700|Roboto:300,400">
    <!-- lightbox-->
    <link rel="stylesheet" href="css/lightbox.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body class="home">
    <!-- navbar-->
    <header class="header">
        <div role="navigation" class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a href="Index.aspx" class="navbar-brand">Lanchonete do Tio Wel</a>
                    <div class="navbar-buttons">
                        <button type="button" data-toggle="collapse" data-target=".navbar-collapse" class="navbar-toggle navbar-btn">Menu<i class="fa fa-align-justify"></i></button>
                    </div>
                </div>
                <div id="navigation" class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Index.aspx">Home</a></li>
                        <li><a href="/ProjetoLanchonete/ConsultaProduto.aspx">Produtos</a></li>
                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Pedidos <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/ProjetoLanchonete/ConsultaProduto.aspx">Produtos</a></li>
                                <li><a href="/ProjetoLanchonete/ConsultaCliente.aspx">Clientes</a></li>
                                <li><a href="/ProjetoLanchonete/Pedidos.aspx">Faça Aqui Seu Pedido</a></li>
                                <li><a href="/ProjetoLanchonete/ConsultaPedido.aspx">Consultar pedidos</a></li>
                            </ul>
                        </li>
                        <li><a href="/ProjetoLanchonete/CadastroCliente.aspx">Adcionar Clientes</a></li>
                    </ul>
                    <a href="#" data-toggle="modal" data-target="#login-modal" class="btn navbar-btn btn-white pull-left"><i class="fa fa-sign-in"></i>Log in</a>
                </div>
            </div>
        </div>
    </header>
    <!-- *** LOGIN MODAL ***_________________________________________________________
    -->
    <form id="form1" runat="server">
        <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" data-dismiss="modal" aria-hidden="true" class="close">×</button>
                        <h4 id="Login" class="modal-title">Customer login</h4>
                    </div>
                    <div class="modal-body">
                        <form action="customer-orders.html" method="post">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="email_modal" placeholder="email" class="form-control" />
                            </div>
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="password_modal" type="password" placeholder="password" class="form-control" />
                            </div>
                            <p class="text-center">
                                <asp:Button ID="btnLogar" runat="server" class="btn btn-primary" OnClick="btnLogar_Click"></asp:Button><i class="fa fa-sign-in"></i> Log in
                            </p>
                        </form>
                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted"><a href="#"><strong>Register now</strong></a>! It is easy and done in 1 minute and gives you access to special discounts and much more!</p>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- *** LOGIN MODAL END ***-->
    <div id="carousel-home" data-ride="carousel" class="carousel slide carousel-fullscreen carousel-fade">
        <!-- Indicators-->
        <ol class="carousel-indicators">
            <li data-target="#carousel-home" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-home" data-slide-to="1"></li>
            <li data-target="#carousel-home" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides-->
        <div role="listbox" class="carousel-inner">
            <div style="background-image: url('img/4.jpeg');" class="item active">
                <div class="overlay"></div>
                <div class="carousel-caption">
                    <h1 class="super-heading">Lanchonete do Tio Wel</h1>

                </div>
            </div>
            <div style="background-image: url('img/bb.jpeg');" class="item">
                <div class="overlay"></div>
                <div class="carousel-caption">
                    <h1 class="super-heading">Lanchonete do Tio Wel</h1>
                </div>
            </div>
            <div style="background-image: url('img/dd.jpeg');" class="item">
                <div class="overlay"></div>
                <div class="carousel-caption">
                    <h1 class="super-heading">Lanchonete do Tio Wel</h1>
                </div>
            </div>
        </div>
    </div>
    <section class="background-gray-lightest negative-margin">
        <div class="container">
            <h1>Venha conhecer a cantina mais famosa de São Paulo</h1>
            <p class="lead">Em pouco tempo a Cantina do Tio Wel ganhou o reconhecimento de seus clientes e da mídia especializada. Não raramente os proprietários são procurados pelos clientes que desejam elogiar pessoalmente os agradáveis sabores provados.</p>
            <p>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                    Continue Lendo
                </button>
            </p>

            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Introdução a Cantina</h4>
                        </div>
                        <div class="modal-body">
                            Em pouco tempo a Cantina do Tio Wel ganhou o reconhecimento de seus clientes e da mídia especializada. Não raramente os proprietários são procurados pelos clientes que desejam elogiar pessoalmente os agradáveis sabores provados.
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <%--PRODUTOS--%>

    <!-- Start: Produto1 -->
    <section class="section--padding-bottom-small">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="post">
                        <div class="image">
                            <a href="text.html">
                                <img src="img/5.jpeg" alt="" class="img-responsive"></a>
                        </div>
                        <h3><a href="text.html">Hamburgão do Serjão</a></h3>
                        <p class="post__intro">Hambúrguer 250 gramas assado na brasa, pão especial amanteigado, alface, tomate, queijo muçarela, barbecue e opcional adicionar batata frita ou batata canoa.</p>
                        <p>
                            <button type="button" class="btn btn-ghost" data-toggle="modal" data-target="#myModalhamb">Continue Lendo</button>
                        </p>
                        <div class="modal fade" id="myModalhamb" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabelhamb">Delicia de Hamburguer</h4>
                                    </div>
                                    <div class="modal-body">
                                        Burger de Falafel da casa (bolinho de grão de bico com temperos árabes), alface, tomate, hortelã, salsinha, cebola e molho tahine, servidos em pão de hamburger. Acompanhado de porção de batata frita.
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End: Produto1 -->

                <!-- Start: Produto2 -->
                <div class="col-sm-6">
                    <div class="post">
                        <div class="image">
                            <a href="text.html">
                                <img src="img/4.jpeg" alt="" class="img-responsive"></a>
                        </div>
                        <h3>Açai com Deliciosas Frutas</h3>
                        <p class="post__intro">Típico da região da Amazônia, o açaí vem conquistando novos mercados e novos adeptos todos os dias. Isso porque a fruta, de cor roxa, tem sabor inigualável e ainda oferece muitos benefícios.</p>
                        <p>
                            <button type="button" class="btn btn-ghost" data-toggle="modal" data-target="#myModalacai">Continue Lendo</button>
                        </p>

                        <div class="modal fade" id="myModalacai" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabelacai">Delicia de Açai</h4>
                                    </div>
                                    <div class="modal-body">
                                        Típico da região da Amazônia, o açaí vem conquistando novos mercados e novos adeptos todos os dias. Isso porque a fruta, de cor roxa, tem sabor inigualável e ainda oferece muitos benefícios.

Rico em vitaminas, carboidratos, ferro e proteínas, o açaí também possui um alto valor nutricional. Além disso, é considerado campeão brasileiro no combate aos radicais livres pela grande quantidade de antioxidantes e está na lista dos alimentos mais saudáveis que existem.

A fruta pode ser consumida de diversas maneiras: em sucos, vitaminas, sorvetes e ainda combinada com outras frutas. É isso mesmo! O açaí pode ser consumido acompanhado de outros sabores.
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End: Produto2 -->


            <!-- Start: Produto3 -->
            <div class="row">
                <div class="col-sm-4">
                    <div class="post">
                        <div class="image">
                            <a href="text.html">
                                <img src="img/5.jpeg" alt="" class="img-responsive"></a>
                        </div>
                        <h3><a href="text.html">Hamburgão do Serjão</a></h3>
                        <p class="post__intro">Hambúrguer 250 gramas assado na brasa, pão especial amanteigado, alface, tomate, queijo muçarela, barbecue e opcional adicionar batata frita ou batata canoa.</p>
                        <p>
                            <button type="button" class="btn btn-ghost" data-toggle="modal" data-target="#myModalhamb">Continue Lendo</button>
                        </p>
                        <div class="modal fade" id="myModalhamb2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabelhamb2">Delicia de Hamburguer</h4>
                                    </div>
                                    <div class="modal-body">
                                        Burger de Falafel da casa (bolinho de grão de bico com temperos árabes), alface, tomate, hortelã, salsinha, cebola e molho tahine, servidos em pão de hamburger. Acompanhado de porção de batata frita.
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End: Produto3 -->


                <!-- Start: Produto4 -->
                <div class="col-sm-4">
                    <div class="post">
                        <div class="image">
                            <a href="text.html">
                                <img src="img/1.jpeg" alt="" class="img-responsive"></a>
                        </div>
                        <h3><a href="text.html">Hambúrguer Bomba de Queijo</a></h3>
                        <p class="post__intro">CheesEgg Hamburguer produzido com pão artesanal, burguer (200 g) grelhado no fogo, queijo mussarela, ovo com gema ""mole"" e maionese verde da casa.</p>
                        <p>
                            <button type="button" class="btn btn-ghost" data-toggle="modal" data-target="#myModalhamb3">Continue Lendo</button></p>
                        <div class="modal fade" id="myModalhamb3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabelhamb3">Delicia de Hamburguer</h4>
                                    </div>
                                    <div class="modal-body">
                                        CheesEgg Hamburguer produzido com pão artesanal, burguer (200 g) grelhado no fogo, queijo mussarela, ovo com gema ""mole"" e maionese verde da casa.
                                    <p>Restaurante: Johnnys Taste</p>
                                        <p>Cardápio: Morumbi</p>
                                        <p>Grupo: Everis (Morumbi)</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End: Produto4 -->

                <%--PRODUTO5--%>
                <div class="col-sm-4">
                    <div class="post">
                        <div class="image">
                            <a href="text.html">
                                <img src="img/ee.jpeg" alt="" class="img-responsive"></a>
                        </div>
                        <h3><a href="text.html">File de Frango Fit</a></h3>
                        <p class="post__intro">Filé de frango grelhado acompanhado de arroz branco e feijão e seleta de legumes(ervilha, batata e cenoura) bem colorida.</p>
                        <p>
                            <button type="button" class="btn btn-ghost" data-toggle="modal" data-target="#myModalfra">Continue Lendo</button></p>
                        <div class="modal fade" id="myModalfra" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabelfra">Delicia de Hamburguer</h4>
                                    </div>
                                    <div class="modal-body">
                                        Filé de frango grelhado acompanhado de arroz branco e feijão e seleta de legumes(ervilha, batata e cenoura) bem colorida.
                                    <p>Restaurante: Johnnys Taste</p>
                                        <p>Cardápio: Morumbi</p>
                                        <p>Grupo: Everis (Morumbi)</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                    <p class="lead margin-bottom--medium">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
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
    <!--   *** SERVICES END ***-->


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
                    <div class="box">
                        <a href="img/1.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 1">
                            <img src="img/1.jpeg" alt="" class="img-responsive" /></a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box">
                        <a href="img/2.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 2">
                            <img src="img/2.jpeg" alt="" class="img-responsive" /></a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box">
                        <a href="../img/gg.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 3">
                            <img src="../img/gg.jpeg" alt="" class="img-responsive" /></a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box">
                        <a href="../img/4.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 4">
                            <img src="../img/4.jpeg" alt="" class="img-responsive" /></a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box">
                        <a href="../img/head.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 5">
                            <img src="../img/head.jpeg" alt="" class="img-responsive" /></a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box">
                        <a href="../img/7.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 6">
                            <img src="../img/7.jpg" alt="" class="img-responsive" /></a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box">
                        <a href="../img/8.jpeg" title="" data-lightbox="portfolio" data-title="Portfolio image 7">
                            <img src="../img/8.jpeg" alt="" class="img-responsive" /></a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-4 col-xs-6">
                    <div class="box">
                        <a href="../img/6.jpg" title="" data-lightbox="portfolio" data-title="Portfolio image 8">
                            <img src="../img/6.jpg" alt="" class="img-responsive" /></a>
                    </div>
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
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"> </script>
    <script src="js/lightbox.min.js"></script>
    <script src="js/front.js"></script>
    <!-- substitute:livereload -->
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID.-->
    <!---->
    <script>
        (function (b, o, i, l, e, r) {
            b.GoogleAnalyticsObject = l; b[l] || (b[l] =
                function () { (b[l].q = b[l].q || []).push(arguments) }); b[l].l = +new Date;
            e = o.createElement(i); r = o.getElementsByTagName(i)[0];
            e.src = '//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e, r)
        }(window, document, 'script', 'ga'));
        ga('create', 'UA-XXXXX-X'); ga('send', 'pageview');
    </script>
</body>
</html>

