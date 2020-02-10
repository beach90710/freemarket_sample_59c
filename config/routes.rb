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
  resources :mypage, only: [:index] do
    collection do
      get 'profile'
      get 'deliver_address'
      get 'card'
      get 'email_password'
      get 'identification'
      get 'sms_confirmation'
      get 'logout'
    end
  end

  resources :signup ,only: [:create] do
    collection do
      get 'step1'
      post 'step2'
      post 'step3'
      post 'step4'
      get 'done'
    end
  end
  root 'items#index'

  resources :item_detail
  get "item_detail", to: "item_detail#index"

  resources :items,only: [:index,:new,:create,:edit,:update,:destroy]
  
  resources :test,only: [:create,:index,:new]

end

