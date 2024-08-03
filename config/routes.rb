Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
  get "/sobre", to: "home#sobre"

  get "/itens", to: "itens#index"

  get "/produtos", to: "produtos#index"
  get "/produtos/novo", to: "produtos#novo"
  post "/produtos/criar", to: "produtos#criar"
  get "/produtos/:id/excluir", to: "produtos#apagar"
  get "/produtos/:id", to: "produtos#alterar"
  post "/produtos/:id/alterar", to: "produtos#salvar"

  resources :clientes
  # get "/clientes", to: "clientes#index"
  # get "/clientes/new", to: "clientes#new"
  # post "/clientes/create", to: "clientes#create"
  # delete "/clientes/:id", to: "clientes#destroy"
  # show "/clientes/:id", to: "clientes#show"
  # get "/clientes/:id", to: "clientes#edit"
  # put "/clientes/:id/", to: "clientes#update"
end
