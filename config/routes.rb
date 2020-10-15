Rails.application.routes.draw do

  resources :bartenders, :recipes, :alcohols
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
