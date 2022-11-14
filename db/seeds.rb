puts "creating cars"
car1 = Car.create(car_description: "Chevrolet Optra", mileage: 1000, images: "https://i.postimg.cc/HnwbjVvk/optra.webp", registration_no: "KCB 112Z", is_hired: false)
car2 = Car.create(car_description: "Toyota Prius", mileage: 1000, images: "https://i.postimg.cc/GhJhgksp/prius.webp", registration_no: "KDB 102J", is_hired: false)

user1 = User.create(name: "greg", email: "Switch@gmail.com", location: "mitini", licence: "G0060", password: "gggu9bje",)
user1 = User.create(name: "gizo", email: "Swit3ch@gmail.com", location: "mombasa", licence: "G00660", password: "gggu9bje")

