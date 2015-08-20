Rails.application.routes.draw do

  devise_for :users #
  resources :posts do #blocks for resources:
    resources :comments
  end

  # redirects root to posts page
  root "posts#index"
  #gets about page
  get '/about', to: 'pages#about'
end
