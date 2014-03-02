CaseJongchyi::Application.routes.draw do
  resources :products, except: [:index] do 
    collection do
      get '/:category/:title', :to => "products#index", :as => ''
    end
  end

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "support", to: "pages#support", as: "support"
  get "contact", to: "pages#contact", as: "contact"
  
    
  devise_for :users, skip: :passwords, :controllers => { sessions: 'admin/sessions' }
  
  namespace :admin do
    root "base#index"
    resources :users, except: :show
    resources :products
    resources :photos, only: [:create, :update]
  end
  
end
