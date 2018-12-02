Rails.application.routes.draw do
  root 'searches#search'
  get '/search', to: 'searches#search'
  post '/search', to: 'searches#foursquare'
  # route the redirect to the SessionsController and create action,
  # which is where we'll get the token
  get '/auth', to: 'sessions#create'
  get '/friends', to: 'searches#friends'
end
