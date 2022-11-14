puts "creating cars"
# car1 = Car.create(car_description: "Chevrolet Optra", mileage: 1000, images: "https://i.postimg.cc/HnwbjVvk/optra.webp", registration_no: "KCB 112Z", is_hired: false)
# car2 = Car.create(car_description: "Toyota Prius", mileage: 1000, images: "https://i.postimg.cc/GhJhgksp/prius.webp", registration_no: "KDB 102J", is_hired: false)

Car.create ([
  {car_description: "Chevrolet Optra",
   mileage: 1000,
   images: "https://i.postimg.cc/6QT9CK9n/chev.webp",
   registration_no: "KBQ 355A ",
   is_hired: false},
   {
    car_description: "Toyota Prius", 
    mileage: 1000,
    images: "https://i.postimg.cc/Mp9BWzPQ/PRIUSS.webp",
    registration_no: "KDB 845Y",
    is_hired: false
   },
   {
    car_description: "Honda insight", 
    mileage: 10000,
    images: "https://i.postimg.cc/W1dNkjpr/INSIGHT.webp",
    registration_no: "KDH 635K",
    is_hired: false
   },
   {
    car_description: "Mazda Demio", 
    mileage: 5000,
    images: "https://i.postimg.cc/3RV6z5QM/DEMIO.webp",
    registration_no: "KDC 317T",
    is_hired: false
   },
   {
    car_description: "Honda swift", 
    mileage: 15000,
    images: "https://i.postimg.cc/6qDXV4pv/SWIFT.jpg",
    registration_no: "KDB 972Z",
    is_hired: false
   },
   {
    car_description: "Mercedes-Benz C200", 
    mileage: 2500,
    images: "https://i.postimg.cc/yx9Vby5P/BENZ.webp",
    registration_no: "KDG 633G",
    is_hired: false
   },
   {
    car_description: "Toyota Crown", 
    mileage: 16000,
    images: "https://i.postimg.cc/GhWDtMdc/CROWN.webp",
    registration_no: "KCZ 700Y",
    is_hired: false
   },
   {
    car_description: "Toyota Premio", 
    mileage: 12000,
    images: "https://i.postimg.cc/0QGvGyJW/PREMIO.webp",
    registration_no: "KBZ 330Y",
    is_hired: false
   },
   {
    car_description: "Nissan Wingroad", 
    mileage: 20000,
    images: "https://i.postimg.cc/zf8Pmwkj/wingroad.webp",
    registration_no: "KDF 189J",
    is_hired: false
   },
   {
    car_description: "Nissan Xtrail", 
    mileage: 15000,
    images: "https://i.postimg.cc/BnqwkcpC/XTRAIL.webp",
    registration_no: "KDF 189J",
    is_hired: false
   },
   {
    car_description: "Toyota Fielder", 
    mileage: 18000,
    images: "https://i.postimg.cc/YCqbb22n/FIELDER.webp",
    registration_no: "KDF 189J",
    is_hired: false
   },

])
