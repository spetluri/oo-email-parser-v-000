# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :email_addresses
  
  @@emails = []
  
  def initialize(emails)
    @email_addresses = emails
  end
  
  def self.parse(emails)
    email_list = emails.include?(", ") ? self.emails.split(", ") : emails.split(" ")
    @@emails << email_list
    @@emails.uniq
  end
  
  
end