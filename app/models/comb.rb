class Comb < ApplicationRecord
  validates :name, :supervisor_id, :sweet_spot, presence: true

  has_many :staff_memberships,
    foreign_key: :comb_id,
    class_name: :CombStaffMembers

  has_many :worker_bees,
    through: :staff_memberships,
    source: :worker

  has_one :supervisor,
    foreign_key: :supervisor_id,
    class_name: :WorkerBee
  
end
