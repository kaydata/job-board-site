Rails.application.routes.draw do
  root 'home#index'
  resources :jobs do
    collection do
      get 'my_jobs'
    end
  end
  devise_for :users
end
