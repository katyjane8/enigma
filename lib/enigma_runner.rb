require_relative 'key_generator'
require_relative 'offset_calculator'

kg = KeyGenerator.new
kg.run
oc = OffsetCalculator.new(kg, Date.today)
oc.offset
