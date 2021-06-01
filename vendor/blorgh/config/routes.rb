Blorgh::Engine.routes.draw do
  root to: "foods#index"
  resources :foods
end
