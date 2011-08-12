require "sinatra"
require './issue.rb'
require 'erb'
require 'time'

get '/' do
  erb :home
end

post '/prosess' do
	if params[:title] == ""
	'<center>please enter title<center/>
    <a href="/">Try again</a>'
  else
   Issue.create(params)#.slice(:title,:description,:state))
   erb :list
	end
end

post '/login' do
# authorise function
#  @username = params[:username]
#  @password = params[:password]
erb :logedin
end

post '/result' do
  options = ['Open','In-Progress','Close']
  if params[:action] == "delete" #For Delete option
    Issue.delete(params[:id])
    erb :logedin
  elsif params[:action] == "update" and options.each { |state| } #for update
    record = Issue.find(params[:id])
    
    if record.update_attributes(:title => params[:title], :description =>params[:description], :state => params[:dropbox], :updated_at => Time.now )
      erb :logedin
    end
  else
    "update and delete allowed"
  end
end
  







