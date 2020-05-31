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
    parsed = list.split(' ')
    parsed2 = []
    #binding.pry
    parsed.each do |email| 
      if email.end_with?(',')
        email = email[0...-1]
        parsed2 << email
      else 
        parsed2 << email 
      end 
  end 
  parsed2.flatten.uniq
end 

=end 

=begin 
class EmailAddressParser
  attr_accessor :list  
  
  def initialize(list)
    @list = list.split(' ')
  end 
  
  def parse
    parsed = []
    #binding.pry
    list.each do |email| 
      if email.end_with?(',')
        email = email[0...-1]
        parsed << email
      else 
        parsed << email 
      end 
  end 
  parsed.flatten.uniq
end 
=end 








end 
