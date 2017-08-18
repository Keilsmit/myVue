Rails.application.routes.draw do
  resources :users
  get 'user/index'

  get 'user/create'

  get 'user/show'

  get 'user/update'

  get 'user/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
