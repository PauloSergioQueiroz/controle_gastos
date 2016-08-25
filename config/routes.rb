Rails.application.routes.draw do
  resources :registro_diarios
  resources :itens
  root 'itens#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
