get '/templatesjs', :agent => /(.*)/ do
    erb :"/extensions/templatesjs/views/example", :layout => :'/views/layouts/public'
end

get '/templatesjs/', :agent => /(.*)/ do
    erb :"/extensions/templatesjs/views/example", :layout => :'/views/layouts/public'
end

=begin
get '/filtersjs', :agent => /(.*)/ do
    redirect '/developers/filtersjs'
end

get '/filtersjs/', :agent => /(.*)/ do
    redirect '/developers/filtersjs'
end

get '/developers/filtersjs', :agent => /(.*)/ do
    erb :"/extensions/filtersjs/views/example", :layout => :'/views/layouts/public'
end

get '/developers/filtersjs/', :agent => /(.*)/ do
    erb :"/extensions/filtersjs/views/example", :layout => :'/views/layouts/public'
end
=end