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
  {name: "Combustion", supervisor_id: WorkerBee.first, sweet_spot: 10.5},
  {name: "Combine", supervisor_id: WorkerBee.first, sweet_spot: 14.7},
  {name: "Combination", supervisor_id: WorkerBee.second, sweet_spot: 12.2},
])

CombStaffMember.create! ([
  {comb_id: Comb.first, worker_id: WorkerBee.third},
  {comb_id: Comb.first, worker_id: WorkerBee.fourth},
  {comb_id: Comb.second, worker_id: WorkerBee.fifth},
  {comb_id: Comb.third, worker_id: WorkerBee.third} # to similate comb re-assignment
])