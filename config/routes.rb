Rails.application.routes.draw do
  namespace :douyin, defaults: { business: 'douyin' } do
    resources :apps, param: :appid do
      member do
        post :login
      end
    end
    resources :douyin_users

    namespace :panel, defaults: { namespace: 'panel' } do
      resources :apps do
        resources :shops
      end
    end
  end
end
