## Links

Deployed app: https://sydney-paranormal.netlify.app/

GitHub Repository: https://github.com/Nictordan/sydney-paranormal-api

## Local Setup Instructions - Backend

- Clone the `sydney-paranormal-api` repository.
- Run `$ gem install bundler` (if you don't have the package manager Bundler installed).
- Run `$ yarn install --check-files`
- Run `$ bundle` to install all of the required dependencies for the project, as described in the `Gemfile`.
- Make sure you have PostgreSQL installed as it is the database management system used in this project.
- Run `rake db:setup` to create a local database of the project and seed pre-defined data.
- Run `rails s -p 4000` to load the Rails server using port 4000. This is because the frontend is set to run at port 3000.
- In the browser, load `http://localhost:4000` to run the app.
- Finally, the code was written in Ruby 2.7.2 In case the project fails to load correctly because of a mismatch between versions, please make sure to use version 2.7.2. 

---
For full details on the documentation, please refer to the README file at the root directory of this organization: https://github.com/Nictordan
