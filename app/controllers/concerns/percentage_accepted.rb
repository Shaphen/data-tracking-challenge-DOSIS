module PercentageAccepted
  extend ActiveSupport::Concern

  def self.calculate(nectar, advisement, accepted, rejected)
    if nectar == advisement
      accepted += 1.0
    end
    rejected += 1.0

    if accepted == 0.0
      percentage_accepted = 0.0
    elsif rejected == 1.0
      percentage_accepted = 1.0
    else
      percentage_accepted = accepted / rejected
    end
    res = [percentage_accepted * 100.0, accepted, rejected]
  end
  
end

# To use this in any model file:
# At the top of desired file - include PercentageAccepted
# Use - PercentageAccepted.calculate(input1, input2)
