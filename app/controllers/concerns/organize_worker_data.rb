module OrganizeWorkerData
  extend ActiveSupport::Concern
  include PercentageAccepted

  def self.organize(data)
    # variables for iteration
    data = data.reverse_order.limit(7)
    @curr_advisement = data.first.advisement
    percent_accepted = []
    @accepted = 0.0
    @rejected = 1.0
    
    # iterate each entry in data table and push into exchange gem variable
    data.each do |entry|
      # starter variables for accepted percentage logic
      if entry.advisement
        @curr_advisement = entry.advisement 
        @accepted = 0
        @rejected = 0
      end

      # call helper method and reassign variables
      results = PercentageAccepted.calculate(entry.nectar, @curr_advisement, @accepted, @rejected)
      percent_accepted.unshift(results[0].round()) # unshift because table goes from bottom-up (as per design docs)
      @accepted = results[1]
      @rejected = results[2]
    end

    percent_accepted
  end
  
end