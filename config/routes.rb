Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :posts
#  get 'posts', to: 'posts#index'
#  get 'show' ,to: 'posts#show'
#  get 'new' , to: 'posts#new'
#  get 'edit' , to: 'posts#edit'
root to: 'posts#index'

end
