class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all
  end

  def novo
  end

  def criar
    Produto.create(nome: params[:nome], descricao: params[:descricao], preco: params[:preco])
    redirect_to "/produtos"
  end

  def apagar
    Produto.delete(params[:id])
    redirect_to "/produtos"
  end

  def alterar
    @produto = Produto.find(params[:id])
  end

  def salvar
    produto = Produto.find(params[:id])
    produto.nome = params[:nome]
    produto.descricao = params[:descricao]
    produto.preco = params[:preco]
    produto.save
    
    redirect_to "/produtos"
  end
end

