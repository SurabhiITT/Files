
# Ram's address using hash
Ram_addr = {
    "street" => "BTM 2ND STAGE",
    "city"   => "Bangalore",
    "state"  => "Karnataka",
    "zip"    => "560068"
}

# Mohan's address using hash to store the value
Mohan_addr = {
    "street" => "Complex market street",
    "city"   => "Indore",
    "state"  => "MP",
    "zip" 	 => "221003"
}

# Sohan's address
Sohan_addr = {
    "street" => "BDI road",
    "city"   => "Mysore",
    "state"  => "Karnataka",
    "zip"    => "298470"
}


Sohan = {
    "first name" => "Sohan",
    "last name"  => "Singh",
    "phone"	     => "9335098234",
    "address"    => Sohan_addr
}

Ram = {
    "first name" => "Ram",
    "last name"  => "Sharma",
    "phone"      => "9008976543",
    "address"    => Ram_addr
}


Mohan = {
    "first name" => "Mohan",
    "last name"  => "Kohli",
    "phone"      => "9456087765",
    "address"    => Sohan_addr
}

#Taking an array to store the hash value
addressbook = [ Ram,Sohan,Mohan]




#Printing the contact details of the person
addressbook.each do |person|
  first = person["first name"]
  last  = person["last name"]
  phone = person["phone"]

  puts first + " " + last + ":"
  puts phone
end


=begin
    addressbook.each do |person|

  #  Name and phone.
  first = person["first name"]
  last  = person["last name"]
  phone = person["phone"]

  puts first + " " + last + ":"
  puts phone


  Address
  street = person["address"]["street"]
  city   = person["address"]["city"]
  state  = person["address"]["state"]
  zip    = person["address"]["zip"]

  puts street
  puts city
  puts state
  puts zip
end
=end
addressbook.sort do |p_a, p_b|
  p_a["first name"] <=> p_b["first name"]
end

addressbook.sort do |p_a, p_b|
  p_a["last name"] <=> p_b["last name"]
end