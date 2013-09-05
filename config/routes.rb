DataDevelopersDo::Application.routes.draw do

	resources :servicio

	root :to => "main#index"

	namespace :api do
		namespace :v1 do
			resources :provincias
			resources :municipios

			match "/provincias/:id/municipios" => "provincias#municipios", via: [:get]
		end
	end

end
