TddPolls::Application.routes.draw do

  root :to => 'survey#index'
  resources :survey

  resources :question

  resources :answer
  

  
end
