Kvar::Application.routes.draw do

  scope :api, defaults: {format: :json} do
    resources :news_bites
  end
  get 'random', to: 'application#random'

  get '/:id', to: 'news_bites#show'
  get '/:news_bite/:edit_key', to: 'application#root', as: 'news_bite_edit'

  root to: 'application#root'

end
