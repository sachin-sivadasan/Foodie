Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  mount Blorgh::Engine => "/blorgh"
  mount Hengine::Engine => "/hengine"
  mount Qengine::Engine => "/qengine"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"
  get "/articles", to: "articles#index"
end
