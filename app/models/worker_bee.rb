class WorkerBee < ApplicationRecord
  validates :name, presence: true

  has_many :comb_memberships,
    foreign_key: :worker_id,
    class_name: :CombStaffMember
  
  has_many :combs,
    through: :comb_memberships,
    source: :comb

  has_many :supervised_combs,
    foreign_key: :supervisor_id,
    class_name: :Comb

  has_many :data_entries,
    foreign_key: :worker_id,
    class_name: :DataEntry
    
end
