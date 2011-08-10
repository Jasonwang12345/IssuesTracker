require 'erb'
require  '/home/jason/git/issuetracker/readin.rb'
require 'active_record'
require 'haml'
#require 'sinatra/static_assets'


class Display


  def home
 template_home = %{}

    rhtml = ERB.new(template_home)
    rhtml.result(binding)

   end


  def list()

    template = %{
    }


       rhtml = ERB.new(template)

    rhtml.result(binding)
  end
  end



#!!!
#%head
# %title issues
#%body
# %table{:border => "1"}
#  %tr
#   %th id
#   %th Title
#   %th Description
#   %th State
#   %th Last Update
#  
#  = count = Issue.find(:all).count
#  = @id = 1
#  = for @id in 1 .. count
#
#  %tr
#   %td= issue.id
#   %td= issue.title
#   %td= issue.description
#   %td= issue.state
#   %td= issue.date
#  = end
#
# %a{:href => "/"}Add more issue


