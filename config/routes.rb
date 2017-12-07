Rails.application.routes.draw do
  get 'errors/not_found'

  get 'errors/internal_server_error'

  root 'static_pages#index'

  get 'faq', to: 'static_pages#faq'

  resources :locations, except: :index
  resources :races

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
