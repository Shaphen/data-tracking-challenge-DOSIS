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
  {worker_id: WorkerBee.first.id, date: Date.parse("Aug 3 2020"), nectar: 400, pollen_globs: 14.8, advisement: 400},
  {worker_id: WorkerBee.first.id, date: Date.parse("Aug 5 2020"), nectar: 400, pollen_globs: 15.5},
  {worker_id: WorkerBee.first.id, date: Date.parse("Aug 6 2020"), nectar: 400, pollen_globs: 14.7},
  {worker_id: WorkerBee.first.id, date: Date.parse("Aug 8 2020"), nectar: 300, pollen_globs: 13.2, advisement: 450},
  {worker_id: WorkerBee.first.id, date: Date.parse("Aug 10 2020"), nectar: 640, pollen_globs: 15.1},
  {worker_id: WorkerBee.first.id, date: Date.parse("Aug 11 2020"), nectar: 750, pollen_globs: 16.3},
  {worker_id: WorkerBee.first.id, date: Date.parse("Aug 14 2020"), nectar: 700, pollen_globs: 14.8},
  
  {worker_id: WorkerBee.second.id, date: Date.parse("Aug 3 2020"), nectar: 500, pollen_globs: 13.8, advisement: 500},
  {worker_id: WorkerBee.second.id, date: Date.parse("Aug 5 2020"), nectar: 500, pollen_globs: 14.5},
  {worker_id: WorkerBee.second.id, date: Date.parse("Aug 6 2020"), nectar: 500, pollen_globs: 12.7},
  {worker_id: WorkerBee.second.id, date: Date.parse("Aug 8 2020"), nectar: 600, pollen_globs: 11.2, advisement: 700},
  {worker_id: WorkerBee.second.id, date: Date.parse("Aug 10 2020"), nectar: 640, pollen_globs: 10.5, advisement: 750},
  {worker_id: WorkerBee.second.id, date: Date.parse("Aug 11 2020"), nectar: 750, pollen_globs: 13.3},
  {worker_id: WorkerBee.second.id, date: Date.parse("Aug 14 2020"), nectar: 700, pollen_globs: 15.2},
  
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 4 2020"), nectar: 300, pollen_globs: 13.8},
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 6 2020"), nectar: 100, pollen_globs: 10.1, advisement: 600},
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 7 2020"), nectar: 600, pollen_globs: 12.5},
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 8 2020"), nectar: 600, pollen_globs: 14.2},
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 10 2020"), nectar: 400, pollen_globs: 10.5, advisement: 650},
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 13 2020"), nectar: 650, pollen_globs: 12.3},
  {worker_id: WorkerBee.third.id, date: Date.parse("Aug 13 2020"), nectar: 500, pollen_globs: 14.0},

  {worker_id: WorkerBee.fourth.id, date: Date.parse("Aug 3 2020"), nectar: 300, pollen_globs: 11.1, advisement: 300},
  {worker_id: WorkerBee.fourth.id, date: Date.parse("Aug 4 2020"), nectar: 300, pollen_globs: 12.4},
  {worker_id: WorkerBee.fourth.id, date: Date.parse("Aug 5 2020"), nectar: 300, pollen_globs: 13.7},
  {worker_id: WorkerBee.fourth.id, date: Date.parse("Aug 7 2020"), nectar: 275, pollen_globs: 11.2},
  {worker_id: WorkerBee.fourth.id, date: Date.parse("Aug 10 2020"), nectar: 400, pollen_globs: 10.4, advisement: 450},
  {worker_id: WorkerBee.fourth.id, date: Date.parse("Aug 11 2020"), nectar: 450, pollen_globs: 12.3},
  {worker_id: WorkerBee.fourth.id, date: Date.parse("Aug 12 2020"), nectar: 450, pollen_globs: 12.1},

  {worker_id: WorkerBee.fifth.id, date: Date.parse("Aug 4 2020"), nectar: 0, pollen_globs: 100},
  {worker_id: WorkerBee.fifth.id, date: Date.parse("Aug 5 2020"), nectar: 0, pollen_globs: 130, advisement: 100},
  {worker_id: WorkerBee.fifth.id, date: Date.parse("Aug 6 2020"), nectar: 0, pollen_globs: 125},
  {worker_id: WorkerBee.fifth.id, date: Date.parse("Aug 7 2020"), nectar: 0, pollen_globs: 142},
  {worker_id: WorkerBee.fifth.id, date: Date.parse("Aug 8 2020"), nectar: 0, pollen_globs: 105, advisement: 50},
  {worker_id: WorkerBee.fifth.id, date: Date.parse("Aug 9 2020"), nectar: 0, pollen_globs: 123, advisement: 0},
  {worker_id: WorkerBee.fifth.id, date: Date.parse("Aug 10 2020"), nectar: 0, pollen_globs: 140, advisement: -10},
])