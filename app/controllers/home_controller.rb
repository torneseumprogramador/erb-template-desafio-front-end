class HomeController < ApplicationController
  def index
    @titulo = "Olá turmaa !!"
    @lista = [
      "item 1",
      "item 2",
      "item 3",
      "item 4",
      "item 5",
    ]

    @verdadeiro = true
  end

  def sobre
  end
end
