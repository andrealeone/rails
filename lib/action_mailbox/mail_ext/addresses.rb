class Mail::Message
  def from_address
    Mail::Address.new from.first
  end

  def recipients_addresses
    convert_to_addresses recipients
  end

  def to_addresses
    convert_to_addresses to
  end

  def cc_addresses
    convert_to_addresses cc
  end

  def bcc_addresses
    convert_to_addresses bcc
  end

  private
    def convert_to_addresses(recipients)
      Array(recipients).collect { |recipient| Mail::Address.new recipient }
    end
end
