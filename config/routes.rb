Rails.application.routes.draw do
  


  resources :webs
  resources :webapps
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :resumes, only: [:index, :new, :create, :destroy]
    root "resumes#index" 
  end
