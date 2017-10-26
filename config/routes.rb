Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/', to: 'pokemon#capture', as: :capture
  patch '/pokemon/:id/damage', to: 'pokemon#damage', as: :damage
  get 'pokemons/new', to: 'pokemon#new', as: :new_pokemon
  post 'pokemons/new', to: 'pokemon#create', as: :pokemon
end
