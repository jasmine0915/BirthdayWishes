Rails.application.routes.draw do
  root 'top#index'
  resources :wishes, only: [:new, :create, :show] do
    collection do
      post 'comfirmation'
      get 'complete'
      get 'print'
    end
    resources :messages, only: [:new, :create] do
      collection do
        get 'thankyou'
      end
    end
  end
end
