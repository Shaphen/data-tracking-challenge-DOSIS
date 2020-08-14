module PercentageAccepted
  extend ActiveSupport::Concern

  def self.calculate(nectar, advisement, accepted, rejected)
    if nectar == advisement
      accepted += 1.0
    end
    rejected += 1.0 # for mathy reasons rejected has to increase regardless

    # logic to handle to handle first pass through
    if accepted == 0.0
      percentage_accepted = 0.0
    elsif rejected == 1.0
      percentage_accepted = 1.0
    else
      percentage_accepted = accepted / rejected
    end

    results = [percentage_accepted * 100.0, accepted, rejected]
  end
  
end
