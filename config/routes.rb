Rails.application.routes.draw do
  namespace :api do 
    resources :product
   end
end

