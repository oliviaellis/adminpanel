Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  root 'pages#landing'
  get 'home', to: 'pages#home'
  resources :admins do
    resources :students
    resources :instructors
    resources :courses
    resources :cohorts
  end
  delete '/admins/:admin_id/cohorts/:cohort_id/student/:id', to: 'cohorts#remove_student', as: 'remove_student'
end
