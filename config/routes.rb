Rails.application.routes.draw do
  scope :api, defaults: {format: 'json'} do
    scope :v1 do
      resources :floods
    end
  end
end
