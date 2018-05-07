module EmailAddressParser
  class Parser
    attr_reader :email_address

    def initialize(email_address)
      @email_address = email_address
    end

    def local_part
      @email_address[/^([A-Za-z0-9\.]+)/,1]
    end

    def tag
      @email_address[/\+([A-Za-z0-9]+)@/,1]
    end

    def domain_name
      @email_address[/@([A-Za-z\.]+)/,1]
    end

    def top_level_domain
      @email_address[/\.([A-Za-z]+)$/, 1]
    end

    def tag?
      !tag.nil?
    end

    def valid?
      raise NotImplementedError
    end

    alias_method :username, :local_part
  end
end
