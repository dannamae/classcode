Rails.application.routes.draw do
  get 'welcome/homepage'
  get 'welcome/new'
  get 'welcome/admin'


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
  resources :new


  post 'session', to: 'session#create', as: 'login'
  delete 'session', to: 'session#destroy', as: 'logout'


end
