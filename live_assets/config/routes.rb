Rails.application.routes.draw do
  root 'live_assets#index'
  get '/serversentevents' => 'live_assets#sse'
end
