Rails.application.routes.draw do
    get 'find_user', to:'users#find_user'
end