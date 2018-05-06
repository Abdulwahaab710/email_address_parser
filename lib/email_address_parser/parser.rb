class Parser
  attr_reader :email_address

  def initialize(email_address)
    @email_address = email_address
  end

  def email_domain_name
    @email_address[/@([A-Za-z\.]+)/,1]
  end

  def top_level_domain
    @email_address[/\.([A-Za-z]+)$/, 1]
  end

  def email_id
    @email_address[/^([A-Za-z0-9\.]+)/,1]
  end

  def tag
    @email_address[/\+([A-Za-z0-9]+)@/,1]
  end

  def tag?
    !tag.nil?
  end
end
