Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :complaints
  #:only => [:index, :new, :create, :edit, :update, :show]
  #except: [:destroy]

  root 'complaints#index'
end
