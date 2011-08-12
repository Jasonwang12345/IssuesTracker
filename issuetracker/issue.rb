require 'active_record'
#require '/home/jason/git/issuetracker/hi.rb'

ActiveRecord::Base.establish_connection(
  :adapter => "mysql2",
  :host =>"localhost",
  :database => "issuestracker",
  :password => "hyenas12"
)

class Issue < ActiveRecord::Base
  validates  :title,:state, :presence => true  #
   has_one :address
  has_many :orders
  has_and_belongs_to_many :roles
end

  

