Rails.application.routes.draw do
root 'docs#index'

  resources :docs do
    resources :projects
  end

end
