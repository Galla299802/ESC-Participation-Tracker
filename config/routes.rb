Rails.application.routes.draw do

  resources :events do
      member do
        get :delete
        get :join
        get :leave
      end
  end

  resources :users do
    member do
      get :delete
    end
  end

  get 'rewards', to: 'rewards#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root :to => "static_pages#home"

  devise_for :user, :controllers => {:registrations => "registrations"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
