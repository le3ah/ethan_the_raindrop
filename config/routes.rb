Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

get '/story', to: 'story#show'
get '/next_page', to: 'next_page#show'
end
