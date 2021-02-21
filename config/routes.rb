Rails.application.routes.draw do
  root 'rooms#index'

  resources :rooms do
    resources :tweets do
      resource :like
      resource :retweet
    end
  end

end
