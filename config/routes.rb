Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
  resources :pins
  get 'welcome/index'
  root 'welcome#index'
  get 'pages/home'
  get 'mypins' => 'pins#mypins'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => 'pinsof'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
