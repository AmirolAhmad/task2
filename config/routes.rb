Rails.application.routes.draw do
  get '/:id' => "users#show", as: 'user'
  get '/:id/articles' => "users#show_articles", as: 'user_articles', :defaults => { :format => :json }

  devise_for :users
  root 'pages#index'

  resources :articles, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
