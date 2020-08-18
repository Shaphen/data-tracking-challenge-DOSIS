## DOSIS Challenge Notes (README):
Thank you for allowing me the opportunity to take this challenge. Here you will find my completed product with information on various decisions I made throughout the process. Here are a few pictures and gifs for your reference 

### Main Page
![first-load](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/first_load.png)

### Navigation
![main-page](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/main_features.gif)

### Update Advisement Form
![form](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/form.png)

### Design Decisions

#### Database Schema
`combs`
| column name       | data type     | details                   |
| ----------------- |:-------------:| --------------------------|
| `id`              | integer       | not null, primary key     |
| `name`            | string        | not null                  |
| `supervisor_id`   | integer       | not null, indexed         |
| `sweet_spot`      | integer       | not null                  |
* `supervisor_id` is created and indexed because every comb is assigned a supervisor that would be displayed in the future when viewing relevent comb data. The index would improve inevitable lookup of a comb's supervisor in the main display page.
* `name` and `sweet_spot` are both mandatory data points that are needed for display on the main page.

`worker_bees`
| column name       | data type     | details                   |
| ----------------- |:-------------:| --------------------------|
| `id`              | integer       | not null, primary key     |
| `name`            | string        | not null                  |
| `favorite_food`   | string        | N/A                       |
* `name` is the only main requirement of this table for display reasons and future associations between `combs` and `data_entries`
* `favorite_food` was added as a fun fact to add character and differentiate each WorkerBee.

`comb_staff_members`
| column name       | data type     | details                   |
| ----------------- |:-------------:| --------------------------|
| `id`              | integer       | not null, primary key     |
| `comb_id`         | integer       | not null, indexed         |
| `worker_id`       | integer       | not null, indexed         |
* `comb_staff_members` is a joins table between `worker_bees` and `combs`. This is necessary for later finding the latest assigned comb for a particular WorkerBee by finding all previous memberships made and organizing them by when they were created.

`data_entries`
| column name       | data type     | details                   |
| ----------------- |:-------------:| --------------------------|
| `id`              | integer       | not null, primary key     |
| `worker_id`       | integer       | not null, indexed         |
| `date`            | date.         | not null, indexed         |
| `pollen_globs`    | integer       | not null                  |
| `nectar`          | integer       | not null                  |
| `advisement`      | integer       | N/A                       |
* `data_entries` is the main table used for populating the graphs and tables in the main display page.
* `worker_id` is used for future associations to connect a WorkerBee to their entries. This can then be pulled and sorted in a manner that can properly populate the data tables and charts when rendering the frontend. Because this lookup will be inevitable an index is also added.
* `date` was initially index with in mind the potential to filter data by the date inputted (I.E only showing all entries from 8-13-2020).

#### Removed turbolinks from the application.js file
![turbolinks](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/remove_turbolinks.png)

This decision was based on the size of the project. The chart in the main show page would only populate on the first load. Whenever you would navigate back to a previous bee's data the chart would malfunction and either show a different bee's information or fail altogether. I discovered that my event listener with `DOMContentLoaded` would only fire once during the first load and then the data would seem to cache somewhere and conflict with any following load.

Through some research I found out that the system behind this conflict was turbolinks. I decided to remove turbolinks because it was simpler to do and I knew that this application was small and had very few features. Alternatively, I could have left turbolinks in, changed my event listener to `turbolinks:onload`, saved the function to a variable and use that same variable to immediately remove the event listener upon firing to prevent consecutive calls, and move the highcharts script to to body of the `application.html` file.
  
#### Seperated the calculation of `%Accepted` from the manipulation of the data variables
![SOC](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/SOP.png)

I decided to create two concerns for finding the percentage of accepted nectar, `organize_worker_data.rb` and `percentage_accepted.rb`. This was based on the seperation of concerns principle. The declaration, manipulation, and population of the variables were different tasks than calculating the actual percentage itself. I found it appropriate to make a `PercentageAccepted` module to be utilized by the `OrganizeWorkerData` module called in `worker_bees_controller`.
  
NB: I was advised to have fun in the design docs and I took that seriously as I made the seed data. Hope you enjoy.
