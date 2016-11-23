Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :act_plans
  resources :acts
  resources :allocations
  resources :axes
  resources :collective_decision_updates
  resources :collective_decisions
  resources :contract_updates
  resources :contractors
  resources :contracts
  resources :expence_forecasts
  resources :invoices
  resources :measures
  resources :organisations
  resources :payments
  resources :projects
  resources :schedule_actions
  resources :schedules
  resources :subprojects
  resources :targets
  resources :undertaking_certificates
  resources :users

  resource :session


  match '/login' => "sessions#new", :as => "login", via: [:get, :post]
  match '/logout' => "sessions#destroy", :as => "logout", via: [:get, :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root :to => "act_plans#index"

  root to: redirect('/act_plans/')

  get 'access_denied', to:'static#access_denied', as: :access_denied



end
