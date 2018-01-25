#Making one class for phone number
class PhoneNumber
  attr_accessor  :number

  def to_s
    "# #{number}"
  end
end