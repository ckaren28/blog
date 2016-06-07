Rails.application.routes.draw do

 root to: 'articles#index'
  resources :articles
 # end

  resources :articles do
    resources :comments
  end
end
