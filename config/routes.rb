Rails.application.routes.draw do
  get 'places' => 'places#index'
  get 'about' => 'home#about'
end
