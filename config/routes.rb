Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'zoos#index'
  resources :zoos do 
    resources :animals
  end

  resources :animals do 
    resources :comments
  end
end
