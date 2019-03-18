require 'pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email_string
  def initialize(email_string)
    self.email_string = email_string
    self.parse
  end 
  
  def parse
  #  binding.pry 
    if self.email_string.include?(",")
      self.email_string.split(",").join.split(" ").uniq
    else
      self.email_string.split(" ").uniq
    end 
  end 
  
end 

emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
parser = EmailParser.new(emails)