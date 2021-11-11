Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[create new show index] do
    resources :bookmarks, only: %i[new create]
    root to: 'lists#index'
  end
  resources :bookmarks, only: [:destroy]
end
