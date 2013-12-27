Kvar::Application.routes.draw do

  scope :api, defaults: {format: :json} do
    resources :news_bites
  end

  get'/', to: 'application#root'
  get'about', to: 'application#root'

  get 'random', to: 'application#random'

  get '/:id', to: 'news_bites#show', as: 'nb'
  get '/:news_bite/:edit_key', to: 'application#root', as: 'news_bite_edit'


end
