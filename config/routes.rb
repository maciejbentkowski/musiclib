Rails.application.routes.draw do
    root "discs#index"
    resources :artists do
        resources :discs
    end
    resources :discs do
        resources :songs
    end
    get '/songs', to: 'songs#index'
end
