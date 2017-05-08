Rails.application.routes.draw do
  root 'users#index'
  get "adminpanel/"		=> "admin/admin#index"
  get "adminprofile/" => "admin/admin#show"
  get "login/" 			=> "sessions#new_session"
  get "search/"     => "audio#search"
  get "createSession/" 	=> "sessions#create"
  delete "logout/"    => "sessions#destroy"
  get "signup/"     => "users#signup"
  get "profile/"    => "users#show"
  post "createuser/"  => "users#create"
  post "uploadSong/" => "admin/admin#uploadSong"
  put "incrementLike/" => "audio#incrementLike"
  # end
  # namespace :admin do
  # 	get "adminpanel/" => "admin#index"
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
