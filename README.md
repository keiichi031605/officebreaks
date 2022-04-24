
# IT infrastructure and security Assignment 1

# Production:
##############################################################################
Here is the deployed production: https://itinfrastracture.herokuapp.com/
##############################################################################

# Files description with relative path

---------------------------------------
HTMLs(Views)

- Home page url: https://itinfrastracture.herokuapp.com/
- Relative path: app/views/pages/home.html.erb 

- Login page url: https://itinfrastracture.herokuapp.com/users/sign_in
- Relative path: app/views/devise/sessions/new.html.erb 

- Signup page url: https://itinfrastracture.herokuapp.com/users/sign_up
- Relative path: app/views/devise/registrations/new.html.erb 

- Menu List page url: https://itinfrastracture.herokuapp.com/items
- Relative path: app/views/items/index.html.erb 

- Shopping Cart page url: https://itinfrastracture.herokuapp.com/users/cart
- Relative path: app/views/users/cart.html.erb 

- Shared Navbar
- Relative path: app/views/shared/_navbar.html.erb

---------------------------------------
Controllers

- Users controller(Manipulate user's shopping cart in each session)
- Relative path: app/controllers/users_controller.rb

- Users controller(Handles items data)
- Relative path: app/controllers/items_controller.rb

---------------------------------------
Models

- User model: 
- Relative path: app/models/user.rb
Handles users' database. User table only has attributes:
    - id:string
    - email:string
    - password:string
    *password has to be 6 characters minimum as a validation

- Item model: 
- Relative path: qpp/models/items.rb
Handles items' database. Item table only has attributes:
    - id:string
    - name:string
    - status:string (This must be "drink", "snack", or "meal")
    - price:integer

---------------------------------------
Routes

router: config/routes.rb

# Installation

if you install the application on your machine locally without using RMIT Linux server, install followings:

1. Install Ruby:
ruby -version: 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin21]

2. Install Rails:
rails -version: 6.1.5

3. Install PostgreSQL:
postgres -V: (PostgreSQL) 14.1

4. Clone the project from: https://github.com/keiichi031605/officebreaks

5. Run following command in the terminal for mac(command line for windows): 
```bash
cd /your_directory_path
rails server
```

6. Run this command and create your test menu item
```bash
rails console
```
Then...
e.g.,
```bash
item1 = Item.create(name: "Coffee", status: "drink", price: "4")
item2 = Item.create(name: "Sandwich", status: "meal", price: "10")
item3 = Item.create(name: "Crisps", status: "snack", price: "3")
```