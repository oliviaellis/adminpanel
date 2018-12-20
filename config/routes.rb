Rails.application.routes.draw do
  root 'pages#home'
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
end
