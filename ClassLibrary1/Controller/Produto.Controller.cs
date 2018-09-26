using System;
using System.Collections.Generic;
using System.Text;
using Web.Controller.DAO;
using Web.Controller.Model;

namespace Web.Controller.Controller
{
    public class ProdutoController
    {
        public Produtos InserirProduto(string produto, string categoria, string valor, string QuantProd)
        {
            return new ProdutoDB().InserirProduto(produto, categoria, valor, QuantProd);

        }
        public ProdutoController() { }

        public List<Produtos> ConsultaProdutos()
        {
            return new ProdutoDB().ConsultaProdutos();
        }

        public List<Produtos> ConsultaProdutosPed()
        {
            return new ProdutoDB().ConsultaProdutosPed();
        }



        public Produtos ConsultaProdutosVal(string Id)
        {
            return new ProdutoDB().ConsultaProdutosVal(Id);
        }

        public void DeletarProduto(string produto)
        {
            new ProdutoDB().DeletarProduto(produto);

        }
    }
}

