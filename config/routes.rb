Rails.application.routes.draw do
  root :to => "homes#top"
  get "/about" => "homes#about"
  get "/gay" => "homes#gay"
  get "/les" => "homes#les"
  get "/trans" => "homes#trans"
  get "/ques" => "homes#ques"
  get "/sogi" => "homes#sogi"
  devise_for :users

  resources :users
  resources :genders, only: [:new, :create, :show, :index, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
