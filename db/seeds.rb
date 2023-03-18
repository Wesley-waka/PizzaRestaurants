# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.create([
    {
        name:"Pizza Palace",
        address:"123 Githurai"
    },
    {
        name:"Gallitos",
        address:"456 Nairobi"
    },
    {
        name:"Pizza Inn",
        address:"456 Dandora"
    }
])

Pizza.create([
    {
        name:"Veggie",
        ingredients:"Carrot and Onions",
    },
    {
        name:"Pepperoni",
        ingredients:"Nyanya and hoho",

    },
    {
        name:"Hawaiian",
        ingredients:"Pinneaple and Onions",

    },
    {
        name:"Berbeque",
        ingredients:"Goat meat",

    }
])

RestaurantPizza.create([
    {
        pizza_id:1,
        restaurant_id: 1
    },
    {
        pizza_id:1,
        restaurant_id: 2
    },
    {
        pizza_id:2,
        restaurant_id:2
    },
    {
        pizza_id:2,
        restaurant_id:3
    },
    {
        pizza_id:2,
        restaurant_id:4
    },
    {
        pizza_id:3,
        restaurant_id:1
    },
    {
        pizza_id:3,
        restaurant_id:3
    }
])