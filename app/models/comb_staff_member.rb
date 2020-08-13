class CombStaffMember < ApplicationRecord
  validates :comb_id, :worker_id, presence: true

  belongs_to :comb,
    foreign_key: :comb_id,
    class_name: :Comb

  belongs_to :worker,
    foreign_key: :worker_id,
    class_name: :WorkerBee
  
end
