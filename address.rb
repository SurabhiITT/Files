class Address
  attr_accessor :kind, :street_1, :street_2, :city, :state, :postal_code

  def to_s(format = 'short')
    address = ''
    case format
      when 'long'
        address += street_1
        address += "#{city}, #{state} #{postal_code}"
      when 'short'
        address += "#{kind}: "
        address += street_1
        if street_2
          address += " " + street_2
        end
        address += ", #{city}, #{state}, #{postal_code}"
    end
    address
  end
end
home = Address.new
home.kind = "Home"
home.street_1 = "123 Btm 2nd stage"
home.city = "Portland"
home.state = "OR"
home.postal_code = "12345"
