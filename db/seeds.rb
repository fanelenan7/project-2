# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Submission.destroy_all
Comment.destroy_all
User.destroy_all

dawn_will_come = Submission.create(title:"The Dawn Will Come", url:"http://i.imgur.com/Or36MKO.jpg", description: "Brooklyn you probably haven't heard of them bespoke, try-hard meditation banh mi 3 wolf moon umami gluten-free williamsburg vice slow-carb everyday carry ugh offal. La croix hammock humblebrag YOLO, +1 tattooed distillery vaporware gentrify. Occupy keffiyeh subway tile, 3 wolf moon pickled put a bird on it gluten-free vice jianbing church-key bitters chillwave 90's tacos waistcoat. Woke live-edge meggings man braid, chia poutine pug umami chicharrones tilde celiac enamel pin literally. Subway tile kogi chillwave plaid, banjo shabby chic helvetica tattooed polaroid pop-up affogato YOLO. Iceland af cred, letterpress wayfarers church-key affogato butcher poutine hammock banjo enamel pin hell of. Chartreuse cray tofu live-edge, VHS post-ironic mlkshk.", user_id:1)
awesome_comment = Comment.create(text:"Iceland kinfolk migas poutine, typewriter tbh brooklyn jean shorts succulents chambray polaroid af jianbing hexagon. Forage cray put a bird on it, four loko la croix neutra mumblecore craft beer heirloom pickled ugh celiac swag. Four loko fap bespoke craft beer yr YOLO, fixie air plant vinyl health goth tumblr tousled 3 wolf moon.", submission_id:1, user_id:1)
