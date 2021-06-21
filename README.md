Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


- Cloning Airbnb App
- Hosting experiences and booking experiences all over the world
- Login email: first@user.com or second@user.com
- Password: 123456

## Features
- User Authentication (gem Devise) (visiter or sign-uped user?)
- User Authorization (gem Pundit) (set limitations of the usage power)
- User-side upload images and storing (gem Cloudinary)
- Image Preview after uploading
- Active Storage allows you to upload files to cloud storage and attach those files to Models. (in this project: to Booking Model)
This creates two tables in the database to handle the associations between our pictures uploaded on Cloudinary and any Model in our app.
- Uploading images for our seed file, using open-uri
- Geocoding (gem geocoder) (in this project, geocoded_by :location in Experience Model)
- Mapbox Map (yarn mapbox-gl) showing map with markers
- Filter & Search (gem pg_search) (in this project: scope one Model Experience)

## Available Scripts

In the project directory, you can run:

## `rails s`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

or 

Open https://new-encounter.herokuapp.com/


### Deployment

git push Heroku master


