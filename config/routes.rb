Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :meetings, only: %i[new create show], param: :access_key

  root "meetings#new"
end
