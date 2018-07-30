# README

Things to note:

* bundle install

* either generate a new API token in a rails console or look up the ApiKey that is created from the seed data

* Must provide a valid API token in header to have access to API

* command line example:
  curl http://localhost:3000/api/v1/users/email/john.johnson@yahoo.com -H 'Authorization: Token token="4a56035be1a06e82df43e3f0f542e297"'

API Endpoints:
**Find users**
  * will show all users
    /api/v1/users

  * will search all users and return only a user with the given email
    /api/v1/users/email/:email

**Find Accounts**
  * will search all users and return the accounts of user with a given email
    /api/v1/accounts/email/:email  

**Find Bills**
  * this will return only the bills for a user with the given email
    /api/v1/bills/email/:email

  * this will return all unpaid bills for a specific user with the given email
    /api/v1/bills/unpaid/:email

  * this will return all paid bills for a specific user with the given email
    /api/v1/bills/paid/:email

  * this will return the total paid and total unpaid charges associated with a given email as well as the number of 'paid' pay periods
    /api/v1/bills/totalcharges/:email

  * this will return the average usage for a user with the given email
    /api/v1/bills/averageusage/:email

  * this will return the average charges, number of charges (pay periods) and sum of charges for a user with the given email
    /api/v1/bills/averagecharges/:email
