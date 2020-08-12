FactoryBot.define do
  factory :data_entry do
    worker_id { 1 }
    date { "2020-08-12 11:55:18" }
    pollenglobs { 1 }
    nectar { 1 }
    advisement { 1 }
  end
end
