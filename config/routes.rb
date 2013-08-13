DataDevelopersDo::Application.routes.draw do

	resources :servicio

  root :to => "main#index"

  namespace :api do
  	namespace :v1 do
  		resources :provincias
  	end
  end

end
