Rails.application.routes.draw do
  root 'pages#home'
  get '/students/dashboard', to: 'students#dashboard'
end
