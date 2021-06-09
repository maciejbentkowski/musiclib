Rails.application.routes.draw do
    root "home#index"
    resource :home, only: [:index]
    resources :artists do
        resources :discs, only: [:show]
    end
    resources :discs do
        resources :songs
    end

end
