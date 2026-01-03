Rails.application.routes.draw do
  resources :servicio, only: [:show]

  root 'main#index'

  namespace :api do
    namespace :v1 do
      resources :provincias do
        get 'municipios', on: :member
      end

      resources :municipios
      resources :ciudades
      resources :sectores

      get '/feriados/:id' => 'feriados#index'
      get '/empresas/:id' => 'empresas#index'
    end
  end
end
