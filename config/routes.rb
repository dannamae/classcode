Rails.application.routes.draw do
  get 'users/homepage', to: 'sessions#new'
  post 'users/homepage', to: 'sessions#create'
  get 'users/index'
  post 'users/index'
  get 'users/admin'
  get 'users/edit'
  get 'users/add'
  post 'users/add',  to: 'users#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do
      resources :admins
      resources :sections
      resources :users

      end
  end

  resources :sessions

  post 'session', to: 'session#create', as: 'login'
  delete 'session', to: 'session#destroy', as: 'logout'


end
