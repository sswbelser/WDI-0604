Rails.application.routes.draw do
  # homepage ("/") goes to planes controller, index action
  root to: 'planes#index'  # localhost:3000/planes

  # CRUD routes for planes
  resources :planes
end

#     Prefix Verb   URI Pattern                Controller#Action
#       root GET    /                          planes#index
#     planes GET    /planes(.:format)          planes#index
#            POST   /planes(.:format)          planes#create
#  new_plane GET    /planes/new(.:format)      planes#new
# edit_plane GET    /planes/:id/edit(.:format) planes#edit
#      plane GET    /planes/:id(.:format)      planes#show
#            PATCH  /planes/:id(.:format)      planes#update
#            PUT    /planes/:id(.:format)      planes#update
#            DELETE /planes/:id(.:format)      planes#destroy
