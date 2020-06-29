# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ridley = StatePark.create(name: "Ridley Creek State Park", address: "1023 Sycamore Mills Rd, Media, PA 19063", county: "Deleware")
white_clay = StatePark.create(name: "White Clay Creek Preserve", address: "405 Sharpless Road, Landenberg, PA 19350", county: "Chester")
ricketts = StatePark.create(name: "Ricketts Glen State Park", address: "695 State Route 487, Benton,PA 17814", county: "Sullivan")
evansburg = StatePark.create(name: "Evansburg State Park", address: "851 May Hall Road, Collegeville, PA 19426", county: "Montgomery")
marsh_creek = StatePark.create(name: "Marsh Creek State Park", address: "675 Park Road, Downingtown, PA 19335", county: "Chester")