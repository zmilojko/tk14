Rails.application.routes.draw do
  resources :runs

  resources :races do 
    post 'mark', on: :member
  end

  get '*path', to: 'copy#get', 
    constraints: lambda { |request| not Dir["#{Rails.root}/app/copy/#{request[:path]}.*"].empty? }

  resources :categories
  resources :usrs

  devise_scope :user do
    get 'login' => 'devise/sessions#new'
    get 'logout' => 'devise/sessions#destroy'
  end

  get 'users/sign_up' => redirect('/404.html')
  devise_for :users
  get 'home/get'

  root 'home#get'
end
