Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  # resources :chatroom #, only: [:getMessagebyId, :getAllMessages] # it exposes all urls related to the resource
  get 'chatroom/:id', to: 'chatroom#getMessagebyId'
  get 'chatroom/', to: 'chatroom#getAllMessages'
  post 'chatroom/post/', to: 'chatroom#createMessage' 
  post 'chatroom/createUser/', to: 'chatroom#createUser' 
  post 'login', to: 'sessions#createUser' #,  params: params, as: :json

  mount ActionCable.server, at: '/cable'
end
