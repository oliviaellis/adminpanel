Rails.application.routes.draw do
  root 'pages#home'
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts, except: :destroy
  delete '/cohorts/:id/', to: 'cohorts#remove_student_from_cohort'
end
