class DataEntry < ApplicationRecord
  validates :worker_id, :date, :pollen_globs, :nectar, presence: true

  belongs_to :bee,
    foreign_key: :worker_id,
    class_name: :WorkerBee
  
end
