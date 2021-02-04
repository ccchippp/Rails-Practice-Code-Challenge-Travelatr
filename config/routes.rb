Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # blogger
  resources :bloggers, only: [:index, :new, :create, :show]

  # posts

  # destination

end
