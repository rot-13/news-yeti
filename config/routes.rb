Kvar::Application.routes.draw do

  scope :api, defaults: {format: :json} do
    resources :news_bites
  end

  root to: 'application#root'
  get '*all' => 'application#root'
end
