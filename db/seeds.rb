Comb.delete_all
WorkerBee.delete_all
CombStaffMember.delete_all
DataEntry.delete_all

WorkerBee.create! ([
  {name: "Beenjamin", favorite_food: "Honey Roasted Almonds"},
  {name: "Dumbeedore", favorite_food: "Honey Bunches of Oats"},
  {name: "Beerry", favorite_food: "Honey-butter Crumpets"},
  {name: "Abbee", favorite_food: "Honey Yogurt"},
  {name: "Mark", favorite_food: "Mark"}
])

Comb.create! ([
  {name: "Combustion", supervisor_id: WorkerBee.first.id, sweet_spot: 10.5},
  {name: "Combine", supervisor_id: WorkerBee.first.id, sweet_spot: 14.7},
  {name: "Combination", supervisor_id: WorkerBee.second.id, sweet_spot: 12.2}
])

CombStaffMember.create! ([
  {comb_id: Comb.first.id, worker_id: WorkerBee.first.id},
  {comb_id: Comb.first.id, worker_id: WorkerBee.third.id},
  {comb_id: Comb.first.id, worker_id: WorkerBee.fourth.id},
  {comb_id: Comb.second.id, worker_id: WorkerBee.first.id},
  {comb_id: Comb.second.id, worker_id: WorkerBee.fifth.id},
  {comb_id: Comb.third.id, worker_id: WorkerBee.second.id},
  {comb_id: Comb.third.id, worker_id: WorkerBee.third.id} # to similate comb re-assignment
])

DataEntry.create! ([
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 4 2020"), nectar: 300, pollen_globs: 13.1},
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 6 2020"), nectar: 0, pollen_globs: 10.1, advisement: 600},
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 7 2020"), nectar: 600, pollen_globs: 12.5}
])