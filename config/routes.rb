Rails.application.routes.draw do
  resources :doctor_dashboards, only: [:index]
  resources :patients
  resources :expenses
  resources :appointments
  resources :monthly_revenues
  get "/dashboard_content", to: "doctor_dashboards#content"
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }


  devise_scope :user do
    root to: "devise/sessions#new"
  end

end
