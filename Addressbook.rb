
require './address'
require "./PhoneNumber"

class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers, :addresses

  def initialize
    @phone_numbers = []
    @addresses = []
  end

  def add_phone_number(number)
    phone_number = PhoneNumber.new
    phone_number.number = number
    phone_numbers.push(phone_number)
  end
  def add_address(kind, street_1, street_2, city, state, postal_code)
    address = Address.new
    address.kind = kind
    address.street_1 = street_1
    address.street_2 = street_2
    address.city = city
    address.state = state
    address.postal_code = postal_code
    addresses.push(address)

  end
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def first_last
    first_name + " " + last_name
  end

  def last_first
    last_first = last_name
    last_first += ", "
    last_first += first_name
    last_first
  end

  def full_name
    full_name = first_name
    full_name += ' '
    full_name += last_name
    full_name
  end

  def to_s(format = 'full_name')
    case format
      when 'full_name'
        full_name
      when 'last_first'
        last_first
      when 'first'
        first_name
      when 'last'
        last_name
      else
        first_last
    end
  end

  def print_phone_numbers
    puts "Phone Number"
    phone_numbers.each { |phone_number| puts phone_number }
  end
  def print_addresses
    puts "Addresses"
    addresses.each { |address| puts address.to_s('short') }
  end
end

Paul = Contact.new
Paul.first_name = "Paul"
Paul.last_name = "Shaw"
Paul.add_phone_number("123-456-7890")
puts Paul.to_s('full_name')
Paul.print_phone_numbers
Paul.add_address("Home", "BTM 2nd Stage", "123", "Bangalore", "Karnataka", "12345")
Paul.print_addresses

Jennifer = Contact.new
Jennifer.first_name = "Jennifer"
Jennifer.last_name = "christ"
Jennifer.add_phone_number("123-456-7890")
puts Jennifer.to_s('full_name')
Jennifer.print_phone_numbers
Jennifer.add_address("Office", "BTM 1st Stage", "123abcd", "Bangalore", "Karnataka", "98760")
Jennifer.print_addresses

=begin
@Contact.sort do |a, b|
  if  a.first_name  <=> b.first_name
    a.last_name  <=> b.last_name
  else
    a.first_name <=> b.first_name
  end
end
=end



