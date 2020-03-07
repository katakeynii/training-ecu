Rails.application.routes.draw do
  
  resources :clients, path: "customers", except: [:destroy]

	#TODO
  # resources :glaces

  get 'accueil/choix'
  get 'accueil/commander'
  get 'accueil/payer'

  get 'livrer-moi-vite', to: "accueil#livrer_moi_way"
  get 'palayaa', to: "accueil#palayaa"

  # get    '/glaces',     to: "glaces#index"
  # get    '/glaces/new', to: "glaces#new"
  # post   '/glaces',     to: "glaces#create"
  # get    'glaces/:id',  to: "glaces#show"
  # put    'glaces/:id',  to: "glaces#edit"
  # delete 'glaces/:id',  to: "glaces#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
