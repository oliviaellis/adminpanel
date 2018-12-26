Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  root 'pages#landing'
  get 'home', to: 'pages#home'
  resources :admins do
    resources :students
    resources :instructors
    resources :courses
    resources :cohorts, except: :destroy
    delete '/cohorts/:id/', to: 'cohorts#remove_student_from_cohort'
  end
end
