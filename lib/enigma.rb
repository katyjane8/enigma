require '../enigma_runner'

file_in        = ARGV[0]
file_out       = ARGV[1]
key            = ARGV[2]
date           = ARGV[3]


encrypt_this = File.read(file_in).chomp

encrypt = Encrypt.new(encrypt_this)

output = File.open(file_out, "w+")
output.write(encrypt.decrypt)

<<<<<<< HEAD
puts "Created #{file_out} with the key #{kg.key_output} and date #{oc.date_format}."
=======
puts puts "Created #{file_out} with the key #{kg.key_output} and date #{oc.date_format}."
>>>>>>> katy

  #call all files!!

  # something like this for the runner file here:

  # require './lib/decipher'
  #
  # file_in = ARGV[0]
  # file_out = ARGV[1]
  #
  # input_data = File.read(file_in).chomp
  #
  # decipher = Decipher.new(input_data)
  #
  # output = File.open(file_out, "w+")
  # output.write(decipher.translate_to_english)
  #
  # puts "Created #{ARGV[1]} containing #{decipher.input_data.length} characters."
