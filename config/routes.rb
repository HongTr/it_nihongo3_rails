Rails.application.routes.draw do
  get 'users/show'
  get 'static_pages/home'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'static_pages#home'
end
