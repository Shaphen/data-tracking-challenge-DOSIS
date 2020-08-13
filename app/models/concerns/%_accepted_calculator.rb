module PercentageAccepted
  extend ActiveSupport::Concern

  def self.calculate(nectar, advisement)
    # insert logic here
  end
  
end

# To use this in any model file:
# At the top of desired file - include PercentageAccepted
# Use - PercentageAccepted.calculate(input1, input2)

# To use the same approach for controller navigate to controllers/concerns
# and follow the same steps