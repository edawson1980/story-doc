Rails.application.routes.draw do
  devise_for :docs
root 'docs#index'

  resources :docs do
    resources :projects
  end


end
