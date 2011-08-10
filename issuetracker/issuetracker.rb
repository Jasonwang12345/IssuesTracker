require "sinatra"
require '/home/jason/git/issuetracker/display.rb'
require '/home/jason/git/issuetracker/readin.rb'
require 'erb'


show = Display.new
time = Time.new

get '/' do
  erb :home
end

post '/prosess' do
	if params[:title] == ""
	'<center>please enter title<center/>
    <a href="/">Try again</a>'
  else
    @title = params[:title]
    @description = params[:description]
    @stateinnumber = params[:RadioGroup]

    if params[:RadioGroup].to_i == 1
      @state = "Open"
    elsif params[:RadioGroup].to_i == 2
      @state = "In-Process"
    elsif params[:RadioGroup].to_i == 3
      @state = "Close"
    end
    @date = time.getlocal
    @id = Issue.find(:all).count + 1

  
   Issue.create(:title => @title, :description => @description, :state => @state , :date => @date)
   erb :list
 
	end


end






