Rails.application.routes.draw do
  resources :poems do
    collection do
      get 'public'
    end
  end
  resources :users do
    member do
      get :following, :followers
      post :follow
      delete :unfollow
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
