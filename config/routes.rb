  # get 'homes/top' => 'homes#top'
  # URLと'コントローラ名#アクション名'の形が同じになる場合は
  # 'コントローラ名#アクション名'の部分を省略することができます

Rails.application.routes.draw do
  get 'homes/top'
  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'

  post 'lists' => 'lists#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
