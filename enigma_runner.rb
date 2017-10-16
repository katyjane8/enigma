require './lib/key_generator'
require './lib/offset_calculator'

kg = KeyGenerator.new
kg.run
oc = OffsetCalculator.new(kg, Date.today)
oc.offset
