Rails.application.routes.draw do
  resources :themes
  resources :values
  resources :images
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  
  root 'main#index'

  namespace :api, defaults: { format: :json } do
      
    match 'next_image',       to: 'api#next_image',   via: 'get'
    match 'prev_image',       to: 'api#prev_image',   via: 'get'
    match 'save_value',       to: 'api#save_value',   via: :get
  end


 # get 'work/index'
  #get 'work/choose_theme'
  #get 'work/display_theme'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  #root 'main#index' при аут. вернуть
  match 'index', to: 'main#index',           via: 'get'
  match 'about', to: 'main#about',           via: 'get'
  match 'help', to: 'main#help',            via: 'get'
  match 'contacts', to: 'main#contacts',        via: 'get'
 
  match 'work',     to: 'work#index',           via: 'get'
  match 'choose_theme', to: 'work#choose_theme', via: 'get'
  match 'display_theme', to: 'work#display_theme', via: 'post'

  match 'signup', to: 'users#new', via: 'get'
  match 'signin', to: 'sessions#new', via: 'get'
  match 'signout', to: 'sessions#destroy', via: 'delete'

  match 'results_list', to: 'work#results_list', via: 'get'
  match 'save_value', to: 'api/api#save_value',   via: 'get'
end

#ApiDemoApp::Application.routes.draw do
#  scope '/api' do
#   scope '/v1' do
#     scope '/projects' do
#        get '/' => 'api_projects#index'
#        post '/' => 'api_projects#create'
#        
#        scope '/names' do
#          get '/' => 'api_names#index'
#          post '/' => 'api_names#create'
#        end
#      end
#    end
#  end
#end