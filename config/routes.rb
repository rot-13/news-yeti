Kvar::Application.routes.draw do

  scope :api, defaults: {format: :json} do
    resources :news_bites
  end

  get 'random', to: 'application#random'
  root to: 'application#root'
end
