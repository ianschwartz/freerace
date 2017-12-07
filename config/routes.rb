Rails.application.routes.draw do
  root 'static_pages#index'

  get 'faq', to: 'static_pages#faq'

  resources :locations, only: :show
  resources :races

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
