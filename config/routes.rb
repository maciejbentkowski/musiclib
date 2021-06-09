Rails.application.routes.draw do
    root "home#index"
    resource :home, only: [:index]
    resources :artists do
        resources :discs
    end
    resources :discs do
        resources :songs
    end

end
