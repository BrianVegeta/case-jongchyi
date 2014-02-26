CaseJongchyi::Application.routes.draw do
  resources :products

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  
    
  devise_for :users, skip: :passwords, :controllers => { sessions: 'admin/sessions' }
  
  namespace :admin do
    root "base#index"
    resources :users, except: :show
  end
  
end
