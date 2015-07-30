Rails.application.routes.draw do
    root to: 'planes#index'

    resources :planes, only: [:index, :new, :create]
end

#    Prefix Verb URI Pattern           Controller#Action
#      root GET  /                     planes#index
#    planes GET  /planes(.:format)     planes#index
#           POST /planes(.:format)     planes#create
# new_plane GET  /planes/new(.:format) planes#new