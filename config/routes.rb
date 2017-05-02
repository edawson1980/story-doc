Rails.application.routes.draw do
  devise_for :users
root 'docs#index'

  resources :docs do
    resources :projects
  end

end
