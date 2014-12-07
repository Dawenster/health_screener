Rails.application.routes.draw do
  root "pages#landing"

  resources :patients, :only => [:create, :show]
end
