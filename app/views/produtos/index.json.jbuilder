json.array! @produtos do |produto|
  json.id produto.id
  json.nome produto.nome
  json.descricao produto.descricao
  json.preco produto.preco
  json.created_at produto.created_at
  json.updated_at produto.updated_at
end
