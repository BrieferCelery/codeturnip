# Code Turnip

# R7 Identification of the problem you are trying to solve by building this particular marketplace app.
Having a website for your business is essential in today's business environment. These website give the business owner access to a broader market and allow customer's to find their business online. Many small business owners work long hours and do not possess the skills or knowledge on managing an online presence. T's bakery is a web application that provides a small business owner with a simple solution for managing the online presence of a bakery business.

# R8 Why is it a problem that needs solving?

As mentioned above having an online presence is an essential part of running a small business. Without a website the business is missing out on access to customers who are searching for a bakery close to them and the ability to sell your products online

# R9 R9 A link (URL) to your deployed app (i.e. website)

[T's Bakery](https://code-turnip.herokuapp.com/)

# R10 A link to your GitHub repository (repo)

[Github link](https://github.com/BrieferCelery/codeturnip)

# R11 Description of your marketplace app (website), including:

## Purpose: 
To give a small bakery business an online presence, for users to buy products from this small bakery business and the ability to manage their products online.

## Functionality / features: 
- User sign up/ registration
- administrative users are able to perform CRUD operations on the products
- Users can create and order items



## Site map

![Map](/docs/Sitemap.png)

## Screenshots ## TODO

## Target audience
- People aged 18 and over looking for local dining establishments.

## Tech Stack

### Frontend
- HTML5, Ruby on Rails, CSS3

### Backend
- Postgresql

### Hosting
- App is deployed on Heroku (www.heroku.com)

# R12 User stories for your app
- As a user I should be able to register an account
- As a user I should be able to purchase a product
- As a user I should be able to browse the website easily
- As an admin I should be able to create new products
- As an admin I should be able to delete a product
- As an admin I should be able to update a product

# R13 Wireframes for the app

![Mobile wireframe](docs/mobile-wireframe.png)
![Dekstop wireframe](docs/desktop-wireframe1.png)
![Desktop2 wireframe](docs/desktop-wireframe2.png)

# R14 Entity Relationship Diagram
![ERD](docs/ERD.png)

# R15 Explain the different high-level components (abstractions) in your app
This application was built using the Model-View-Controller(MVC) architecture patten. The app breakdown is as follows -

## Product:
The product model handles the connection between the user model and the product model

## User:

The user model was automatically created by [Devise](https://github.com/heartcombo/devise) a gem that handles user authentication. The user model creates a connection to the product so that a user can buy a product. User also connects to the role model to handle special user roles(admin).

## Role: 
The role model was created automatically by the gem [Rolify](https://github.com/RolifyCommunity/rolify). The role model connects to the user model to apply special user priveledges.

## Ability