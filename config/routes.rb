Rails.application.routes.draw do
  
  
  resources :teams
  resources :projects do
       resources :tasks do
            resources :dependencies
       end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
get 'add/member', :to => 'home#add_member_to_team_form'
post 'submit/member', :to => 'home#add_member_to_team'
get 'team/members', :to => 'home#team_and_members'
get 'assign/project', :to => 'home#assign_project_form'
post 'assign/project/submit', :to => 'home#assign_project_submit'
get 'assigned/project', :to => 'home#assigned_project_to_team'



end
