require 'email_address_parser/version'
require 'email_address_parser/parser'

module EmailAddressParser
  def self.new(*args)
    Parser.new(*args)
  end
end
