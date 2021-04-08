## Setting up

Ruby Version: 2.5.7

Rails Version: 6.1.3.1

---
Clone repo:
```
git clone git@github.com:hdpuk86/how_hot.git
```

Install Ruby gems:
```
bundle install
```

Install Javascript packages:
```
yarn install
```

Create the databases:
```
rails db:create
```

Run the database migrations:
```
rails db:migrate
```

It's important to also run the seeds:
```
rails db:seed
```

Start server, application should run on `localhost:3000`:
```
rails server
```

## Running tests with MiniTest

Run all tests:
```
rails test
```

Run a specific test file:
```
rails test test/controllers/heatometer_controller_test.rb
```

Run a specific test:
```
rails test test/controllers/heatometer_controller_test.rb:4
```

---

## The App

The app should open on a page with 2 links:

'Manage heat ratings' - where you can define the thresholds for the heat ratings

'Get a forecast' - where you can lookup a forecast using a postcode

After creating a forecast the app will redirect you back to the main page and you should see your ratings.

## Improvements Needed

- Validation to check a user has entered a valid UK postcode format
- Validation for to ensure API responses are for UK postcodes
- More testing required
- Need to install and run a linter - Rubocop
