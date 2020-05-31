# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

=begin
class EmailAddressParser
  attr_accessor :list  
  
  def initialize(list)
    @list = list.split(' ')
  end 
  
  def parse
    parsed = []
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



class EmailAddressParser
  attr_accessor :list  
  
  def initialize(list)
    @list = list.split(' ')
  end 
  
  def parse
    list.map do |email| 
      if email.end_with?(',')
        email = email[0...-1]
      else 
        email 
      end 
  end 
  .flatten.uniq
end 
=end 

end 
