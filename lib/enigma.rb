# > require './lib/enigma'
# > e = Enigma.new
# > my_message = "this is so secret ..end.."
# > output = e.encrypt(my_message)
# => # encrypted message here
# > output = e.encrypt(my_message, "12345", Date.today) #key and date are optional (gen random key and use today's date)
# => # encrypted message here
# > e.decrypt(output, "12345", Date.today)
# => "this is so secret ..end.."
# > e.decrypt(output, "12345") # Date is optional (use today's date)
# => "this is so secret ..end.."
# > e.crack(output, Date.today)
# => "this is so secret ..end.."
# > e.crack(output) # Date is optional, use today's date
# => "this is so secret ..end.."
#
# def encrypt
# end
#
# def decrypt
# end
#
# def crack
# end
