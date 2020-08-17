## DOSIS Challenge Notes (README):
Thank you for allowing me the opportunity to take this challenge. Here you will find my completed product with information on various decisions I made throughout the process. Here are a few pictures and gifs for your reference 

### Main Page
![first-load](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/first_load.png)

### Navigation
![main-page](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/main_features.gif)

### Update Advisement Form
![form](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/form.png)

### Design Decisions
- Removed turbolinks from the application.js file
![turbolinks](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/remove_turbolinks.png)
  - This decision was a decision based on the size of the project. The chart in the main show page would only populate on the first load. Whenever you would naviagte back to a previouse bee's data the chart would malfunction and either show a different bee's information or fail altogether. I discovered that my event listener with `DOMContentLoaded` would only fire once during the first load and then the data would seem to cache somewhere and conflict with any following load. Through some research I found out that the system behind this conflict was turbolinks. I decided to remove turbolinks because it was simpler to do and I knew that this application was small and with very few features. Alternatively, I could have left turbolinks in, changed my event listener to `turbolinks:onload`, saved the function to a variable and use that same variable to immediately remove the event listener upon firing to prevent consecutive calls, and move the highcharts script to to body of the `application.html` file.
  
- Seperated the calculation of `%Accepted` from the manipulation of the data variables
![SOC](https://github.com/Shaphen/shaphen_bee_challenged/blob/master/app/assets/images/SOP.png)
  - I decided to create two concerns for finding the percentage of accepted nectar, `organize_worker_data.rb` and `percentage_accepted.rb`. This was based on my practice of seperation of concerns. The declaration, manipulation, and population of the variables were a different task than calculating the actual percentage itself. I found it appropriate to make a `PercentageAccepted` module to be utilized by the `OrganizeWorkerData` module called in `worker_bees_controller`.
  
NB: I was advised to have fun in the design docs and I took that seriously as I made the seed data. Hope you enjoy.
