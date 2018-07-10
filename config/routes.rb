Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get '/mytasks', to: 'tasks#mytasks', as: 'mytasks'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users

  root to: 'toppages#index'
  resources :tasks
end
