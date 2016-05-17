Mercury::Engine.routes.draw do
  get '/editor(/*requested_uri)' => "mercury#edit", :as => :mercury_editor

  scope '/mercury' do
    get   ':type/:resource',        :to => "mercury#resource"
#    match 'snippets/:name/options', :to => "mercury#snippet_options", :via => [:get, :post], :as => 'snippets_options'
#    match 'snippets/:name/preview', :to => "mercury#snippet_preview", :via => [:get, :post], :as => 'snippets_preview'

    get 'snippets/:name/options', :to => "mercury#snippet_options"
    post 'snippets/:name/options', :to => "mercury#snippet_options"
    get 'snippets/:name/preview', :to => "mercury#snippet_preview"
    post 'snippets/:name/preview', :to => "mercury#snippet_preview"

  end
end
