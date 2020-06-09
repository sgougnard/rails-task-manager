Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      # SEE ALL TASKS
  get "tasks" => "tasks#index", as: :tasks


  # CREATE A NEW TASK (2 HTTP REQUESTS)
  get "tasks/new" => "tasks#new"
  post "tasks" => "tasks#create"

  # SEE ONE PARTICULAR TASK
  get "tasks/:id" => "tasks#show", as: :task

  # EDIT & UPDATE A RESTAURANT (Technically “edit then update”)
  get "tasks/:id/edit" => "tasks#edit"
  patch "tasks/:id" => "tasks#update"

  # DELETE A RESTAURANT (in this case, destroy)
  delete "tasks/:id"  => "tasks#destroy"
  # CHEATCODE:
  # resources: Tasks
end
