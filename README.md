
# IT infrastructure and security Assignment 1

# Production:
##############################################################################
Here is the deployed production below: https://itinfrastracture.herokuapp.com/
##############################################################################

# Files description with relative path

---------------------------------------
HTMLs(Views)

- Home page(url: https://itinfrastracture.herokuapp.com/): app/views/pages/home.html.erb 

- Login page(url: https://itinfrastracture.herokuapp.com/users/sign_in): app/views/devise/sessions/new.html.erb 

- Signup page(url: https://itinfrastracture.herokuapp.com/users/sign_up): app/views/devise/registrations/new.html.erb 

- Menu List page(url: https://itinfrastracture.herokuapp.com/items): app/views/items/index.html.erb 

- Shopping Cart page(url: https://itinfrastracture.herokuapp.com/users/cart): app/views/users/cart.html.erb 

- Shared Navbar: app/views/shared/_navbar.html.erb

---------------------------------------
Controllers

- Users controller(Manipulate user's shopping cart in each session): app/controllers/users_controller.rb

- Users controller(Handles items data): app/controllers/items_controller.rb

---------------------------------------
Models

- User model: app/models/user.rb
Handles users' database. User table only has attributes:
    - id:string
    - email:string
    - password:string
    *password has to be 6 characters minimum as a validation

- Item model: qpp/models/items.rb
Handles items' database. Item table only has attributes:
    - id:string
    - name:string
    - status:string
    - price:integer

---------------------------------------
Routes

router: config/routes.rb

# Installation

if you install the application on your machine locally without using RMIT Linux server, install followings:

Ruby:
ruby -version: 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin21]

Rails:
rails -version: 6.1.5

PostgreSQL:
postgres -V: (PostgreSQL) 14.1

Then, running following command in the terminal for mac or command line for windows: 
```bash
rails server
```