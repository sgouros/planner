Rails.application.routes.draw do
  devise_for :users
  as :user do
    get 'users/edit' => 'users/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'users/registrations#update', :as => 'user_registration'
  end
  resources :collective_decisions
  resources :users
  resources :allocations
  resources :schedule_actions
  resources :schedules
  resources :payments
  resources :invoices
  resources :organisations
  resources :collective_decision_updates
  resources :expence_forecasts
  resources :contractors
  resources :undertaking_certificates
  resources :acts
  resources :act_plans
  resources :targets
  resources :measures
  resources :axes
  resources :contract_updates
  resources :contracts
  resources :subprojects
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "act_plans#index"

end
