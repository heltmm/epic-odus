Rails.application.routes.draw do
  root :to => 'chapters#index'

  resources :chapters do
    resources :sections, :except => [:index]
  end

  resources :sections, :except => [:index] do
    resources :lessons
  end
end
