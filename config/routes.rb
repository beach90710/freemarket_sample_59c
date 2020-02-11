Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", to: "users/sessions#new"
    get "sign_out", to: "users/sessions#destroy" 
  end
  resources :test
  resources :signup ,only: [:create] do
    collection do
      get 'step1'
      post 'step2'
      post 'step3'
      post 'step4'
      get 'done'
    end
  end
  root 'test#index'

  resources :item_detail
  get "item_detail", to: "item_detail#index"

  resources :items,only: [:index,:new,:create,:edit,:update,:show]do
    collection do
      post 'pay/:id'=> 'items#pay', as: 'pay'
    end
  end
  
  resources :test,only: [:create,:index,:new]

end

