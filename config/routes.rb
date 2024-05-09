Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :shortened_urls, only: [:new, :create, :show]
  get '/:short_code', to: 'shortened_urls#redirect'
end
