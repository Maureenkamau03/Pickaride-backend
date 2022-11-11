puts "creating cars"
# car1 = Car.create(car_description: "Chevrolet Optra", mileage: 1000, images: "https://i.postimg.cc/HnwbjVvk/optra.webp", registration_no: "KCB 112Z", is_hired: false)
# car2 = Car.create(car_description: "Toyota Prius", mileage: 1000, images: "https://i.postimg.cc/GhJhgksp/prius.webp", registration_no: "KDB 102J", is_hired: false)

Car.create ([
  {car_description: "Chevrolet Optra",
   mileage: 1000,
   images: "https://i.postimg.cc/HnwbjVvk/optra.webp",
   registration_no: "KCB 112Z",
   is_hired: false},
   {
    car_description: "Toyota Prius", 
    mileage: 1000,
    images: "https://i.postimg.cc/GhJhgksp/prius.webp",
    registration_no: "KDB 102J",
    is_hired: false
   },
   {
    car_description: "Honda insight", 
    mileage: 10000,
    images: "https://i.postimg.cc/vBbg9rPn/2010-Honda-Insight-LX-10-03-2009.jpg",
    registration_no: "KDF 189J",
    is_hired: false
   },
   {
    car_description: "Mazda Demio", 
    mileage: 5000,
    images: "https://i.postimg.cc/zBbMChVJ/MAZDA.jpg",
    registration_no: "KBB 200J",
    is_hired: false
   }
   {
    car_description: "Honda swift", 
    mileage: 15000,
    images: "https://i.postimg.cc/vBbg9rPn/2010-Honda-Insight-LX-10-03-2009.jpg",
    registration_no: "KDF 189J",
    is_hired: false
   },
   {
    car_description: "Honda insight", 
    mileage: 10000,
    images: "https://i.postimg.cc/vBbg9rPn/2010-Honda-Insight-LX-10-03-2009.jpg",
    registration_no: "KDF 189J",
    is_hired: false
   },
   {
    car_description: "Honda insight", 
    mileage: 10000,
    images: "https://i.postimg.cc/vBbg9rPn/2010-Honda-Insight-LX-10-03-2009.jpg",
    registration_no: "KDF 189J",
    is_hired: false
   },
])
