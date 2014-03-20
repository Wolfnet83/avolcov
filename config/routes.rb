Avolcov::Application.routes.draw do

  scope "(:locale)" do
    get "about" => 'about#index'
    get "projects" => 'projects#index'
    get "contacts" => 'contacts#index'
  end
  
  root 'about#index'


  #scope "(:locale)", locale: /en|ru/ do
    #get "about/index", as: :about
    #get "projects/index", as: :projects
    #get "contacts/index", as: :contacts
  #end

end
