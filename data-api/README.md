# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Must provide a valid API token in header to have access to API

* command line example:
  curl http://localhost:3000/api/v1/users/email/john.johnson@yahoo.com -H 'Authorization: Token token="513351fb668580c8096e026ea951598f"'

API Endpoints:
**Find users**
  /api/v1/users will show all users
  /api/v1/users/email/:email will search all users and return only a user with the given email

**Find Accounts**
  /accounts/email/:email  will search all users and return the accounts of user with a given email


**Find Bills**
  /api/v1/bills?status=unpaid this will return all unpaid bills
  /api/v1/bills?status=paid this will return all paid bills

  /api/v1/bills/email/:email this will return only the bills for a user with the given email
  /api/v1/bills/unpaid/:email this will return all unpaid bills for a specific user with the given email
  /api/v1/bills/paid/:email this will return all paid bills for a specific user with the given email
