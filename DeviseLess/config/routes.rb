Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :homes

  devise_scope :user do
    get "/users" => "devise/sessions#new"
  end

  get '/', to: 'homes#index', as: 'root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
