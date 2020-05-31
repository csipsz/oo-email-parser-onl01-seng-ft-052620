# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
=begin
class EmailAddressParser
  attr_accessor :list  
  
  def initialize(list)
    @list = list
  end 
  
  def parse
    parsed = list.split(', ')
    parsed.uniq
  end 
  
end 
=end 

class EmailAddressParser
  attr_accessor :list  
  
  def initialize(list)
    @list = list
  end 
  
  def parse
    parsed = list.split(' ')
    #binding.pry
    parsed.collect do |email| 
      if email.endwith?(',')
        email = email.substring(0, email.length() - 1)
      else 
        email 
      end 
    parsed.uniq
  end 
end 
end 
