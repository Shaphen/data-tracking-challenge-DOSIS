class DataEntry < ApplicationRecord
  validates :worker_id, :date, :pollen_globs, :nectar, presence: true
  validates :advisement, numericality: { 
    only_integer: true, message: "has to be a number", allow_nil: true
  }

  belongs_to :bee,
    foreign_key: :worker_id,
    class_name: :WorkerBee
  
end
