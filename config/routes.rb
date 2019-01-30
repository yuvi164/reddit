Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :links do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
     end
     resources :comments
    end
  root('links#index')
end
