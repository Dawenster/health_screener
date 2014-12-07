Rails.application.routes.draw do
  root "pages#landing"

  get "/results" => "pages#results", as: :results

  resources :patients, :only => [:create]
end
