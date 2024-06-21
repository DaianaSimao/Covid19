Rails.application.routes.draw do
  root 'home#index'
  get 'home/confirmado', action: 'confirmed', controller: 'home'
  get 'home/mortos', action: 'deaths', controller: 'home'
  get '/search', to: 'home#search', as: 'search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

