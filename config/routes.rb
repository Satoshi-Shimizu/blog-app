Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root    'posts#index'
  delete  'posts/:id'       =>  'posts#destroy'
  get     'posts/new'       =>  'posts#new'
  post    'posts'           =>  'posts#create'
  get     'posts/:id/edit'  =>  'posts#edit'
  patch   'posts/:id'       =>  'posts#update'


end
