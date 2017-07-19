# E-Commerce Refactor

#### _An application for creating and maintaining an online store. Complete with user authentication and user shopping cart_

#### By _**EPICODUS & Kat Gifford**_

## Setup/Installation Requirements

* _Clone the repo_
* _Run the following commands in the root of the project to set up the application_
```
$ bundle install
$ postgres
$ rails db:create
$ rails db:setup
$ rails s
```
### Accounts
The default credentials provided below, will allow you to see the website as a admin user. You may also sign up with your own information.

| Type | Email | Password |
| ---- | ----- | -------- |
| user | user@gmail.com | Password1! |
| admin | admin@gmail.com | Password1 |

## Revisions

### AJAX
* _Add AJAX to update the shopping cart total and number of order-items in cart(in navbar)_
* _Add AJAX to show/hide product details on index_
* _Add AJAX to remove order-item(products) from cart_

### Refactors
* _Add flash messages for signing in/out & signing up_
* _Refactor index page so users cannot order negative numbers_
* _Add Create product view for admins_
* _Add Edit and Destroy CRUD for products/admin & flash messages_
* _Set up products to accept decimal numbers for creation by admin_
* _Add product validations & general model validations_
* _Add password validations to ensure a user's password is sufficiently complex._

## Technologies Used

* _HTML5/SCSS_
* _Rails_
* _Ruby_
* _Rspec_
* _Capybara_
* _Faker_
* _Bcrypt_
* _Materialize_
* _Faker_


### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **_Epicodus & Kat Gifford_**
