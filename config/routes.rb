Rails.application.routes.draw do
  resources :tweet02s
  root 'tweets#index'

  resources :tweets do
    resource :like
    resource :retweet
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

end
