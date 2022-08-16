Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  # Defines the root path route ("/")

  #creat
  get '/tasks/new', to: 'tasks#new' # -> afficher le formulaire
  post '/tasks', to: 'tasks#create'

  #edit and update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

   #delete
   delete 'tasks/:id', to: 'tasks#destroy'

   #show tasks
   get '/tasks/:id', to: 'tasks#show', as: :task
end
