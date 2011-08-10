require 'active_record'
#require '/home/jason/git/issuetracker/hi.rb'



  ActiveRecord::Base.establish_connection(
      :adapter => "mysql2",
      :host =>"localhost",
      :database => "issuestracker",
      :password => "hyenas12"
  )


class Issue < ActiveRecord::Base
end

  

