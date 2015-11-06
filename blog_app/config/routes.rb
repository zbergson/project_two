Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  resources :blogs
  root 'blogs#index'
  

#====================================user routes=======================================
#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       users/sessions#new
#             user_session POST   /users/sign_in(.:format)       users/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
#        user_registration POST   /users(.:format)               users/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
#                          PATCH  /users(.:format)               users/registrations#update
#                          PUT    /users(.:format)               users/registrations#update
#                          DELETE /users(.:format)               users/registrations#destroy

#====================================blog routes=========================================

#     blogs GET    /blogs(.:format)               blogs#index
#           POST   /blogs(.:format)               blogs#create
#  new_blog GET    /blogs/new(.:format)           blogs#new
# edit_blog GET    /blogs/:id/edit(.:format)      blogs#edit
#      blog GET    /blogs/:id(.:format)           blogs#show
#           PATCH  /blogs/:id(.:format)           blogs#update
#           PUT    /blogs/:id(.:format)           blogs#update
#           DELETE /blogs/:id(.:format)           blogs#destroy

end
