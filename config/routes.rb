Rails.application.routes.draw do
  post 'admin/login', to: 'sessions#create_admin'
  post 'student/login', to: 'sessions#create_student'
  post 'instructor/login', to: 'sessions#create_instructor'
  get 'logout', to: 'sessions#destroy'
  get 'student/:id', to: 'students#show'
  get 'instructor/:id', to: 'instructors#show'
  root 'pages#home'
  get 'home', to: 'admins#home'
  resources :admins do
    resources :students
    resources :instructors
    resources :courses
    resources :cohorts, except: :destroy
    delete '/cohorts/:id/', to: 'cohorts#remove_student_from_cohort'
  end
end
