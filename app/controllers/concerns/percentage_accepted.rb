module PercentageAccepted
  extend ActiveSupport::Concern

  def self.calculate(nectar, advisement, accepted, rejected)
    if nectar == advisement
      accepted += 1.0
    end
    rejected += 1.0 # for mathy reasons rejected has to increase regardless

    percentage_accepted = accepted / rejected

    results = [percentage_accepted * 100.0, accepted, rejected]
  end
  
end
