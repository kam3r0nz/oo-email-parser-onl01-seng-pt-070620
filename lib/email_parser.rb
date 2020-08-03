# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



class EmailAddressParser
  attr_accessor :addresses, :csv_emails
  
  def initialize(csv_emails)
    @csv_emails = csv_emails
  end
  
  def parse
    split_email = csv_emails.split.collect {|address| address.split(",")}
    new_array = split_email.flatten.uniq
  end
  
end