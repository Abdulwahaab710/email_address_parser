require 'spec_helper'
require 'email_address_parser'

RSpec.describe EmailAddressParser::Parser do
  before(:each) do
    @email_address = EmailAddressParser::Parser.new('someusername+sometag@somedomain.com')
  end

  context 'when calling #local_part' do
    it 'returns someusername' do
      expect(@email_address.local_part).to eq('someusername')
    end
  end

  context 'when calling #tag' do
    it 'returns sometag' do
      expect(@email_address.tag).to eq('sometag')
    end
  end

  context 'when calling #domain_name' do
    it 'returns somedomain.com' do
      expect(@email_address.domain_name).to eq('somedomain.com')
    end
  end

  context 'when calling #top_level_domain' do
    it 'return com' do
      expect(@email_address.top_level_domain).to eq('com')
    end
  end

  context 'when calling #tag?' do
    it 'returns true' do
      expect(@email_address.tag?).to eq(true)
    end
  end

  context 'when calling valid?' do
    it 'raise NotImplementedError' do
      expect { @email_address.valid? }.to raise_error(NotImplementedError)
    end
  end
end
