  # get 'homes/top' => 'homes#top'
  # URLと'コントローラ名#アクション名'の形が同じになる場合は
  # 'コントローラ名#アクション名'の部分を省略することができます

Rails.application.routes.draw do
  get 'homes/top'
  get 'lists/new'
  # get 'lists/index'
  get 'lists' => 'lists#index'
  # get 'lists/show'
  get 'lists/:id' => 'lists#show'
  # get 'lists/edit'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  # 名前付きルート（as: 'edit_list'）の記述を定義
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  post 'lists' => 'lists#create'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
