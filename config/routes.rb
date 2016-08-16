Rails.application.routes.draw do
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
  resources :accountables
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

  root :to => "projects#index"

end
