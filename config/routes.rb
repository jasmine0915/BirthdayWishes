Rails.application.routes.draw do
  root 'top#index'
  resources :wish, only: [:new, :create, :show] do
    collection do
      post 'comfirmation'
      get 'complete'
    end
    resources :message, only: [:new, :create] do
      collection do
        get 'thankyou'
      end
    end
  end
end
