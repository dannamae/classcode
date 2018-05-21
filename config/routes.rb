Rails.application.routes.draw do
  get 'users/homepage'
  get 'users/index'
  get 'users/admin'
  get 'users/edit'
  get 'users/add'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do
      resources :admins
      resources :users
      resources :attendances
      resources :sections
    end
  end

  resources :homepage
  resources :index
  resources :admin
  resources :add


  post 'session', to: 'session#create', as: 'login'
  delete 'session', to: 'session#destroy', as: 'logout'


end
