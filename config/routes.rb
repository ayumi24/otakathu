Rails.application.routes.draw do

  #ユーザー用ルーティング
  devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

 #管理者用ルーティング
 devise_for :admins, skip: [:registrations, :passwords], controllers: {
   sessions: 'admin/sessions'
 }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
