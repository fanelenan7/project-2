# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Album.destroy_all
Submission.destroy_all
Comment.destroy_all
User.destroy_all

lena = User.create!(email: "lena@email.com", password: "password")

art = Album.create!(title: "Art", user_id: 1)
designs = Album.create!(title: "Designs", user_id: 1)
sketch = Album.create!(title: "Sketch", user_id: 1)

dawn_will_come = Submission.create!(title:"The Dawn Will Come", url:"http://i.imgur.com/Or36MKO.jpg", description: "Brooklyn you probably haven't heard of them bespoke, try-hard meditation banh mi 3 wolf moon umami gluten-free williamsburg vice slow-carb everyday carry ugh offal. La croix hammock humblebrag YOLO, +1 tattooed distillery vaporware gentrify. Occupy keffiyeh subway tile, 3 wolf moon pickled put a bird on it gluten-free vice jianbing church-key bitters chillwave 90's tacos waistcoat. Woke live-edge meggings man braid, chia poutine pug umami chicharrones tilde celiac enamel pin literally. Subway tile kogi chillwave plaid, banjo shabby chic helvetica tattooed polaroid pop-up affogato YOLO. Iceland af cred, letterpress wayfarers church-key affogato butcher poutine hammock banjo enamel pin hell of. Chartreuse cray tofu live-edge, VHS post-ironic mlkshk.", user_id:1, album_id: 1)

tiefling = Submission.create!(title:"Tiefling Sorcerer", url:"http://i.imgur.com/bXj1qEg.jpg", description: "Mustache occupy sartorial cliche enamel pin, put a bird on it XOXO activated charcoal quinoa cray typewriter blog craft beer kinfolk cardigan. Chillwave offal beard, VHS plaid iceland forage pok pok 90's selvage. Vexillologist distillery woke, truffaut bespoke craft beer raclette XOXO jean shorts. Vaporware mustache hell of post-ironic artisan ramps next level. Kombucha kitsch paleo, ramps helvetica waistcoat readymade distillery +1 next level. Raclette lumbersexual scenester letterpress disrupt, banh mi la croix affogato swag. Gastropub green juice lumbersexual, raw denim swag 90's viral four dollar toast meditation messenger bag fap edison bulb.", user_id:1)

alice = Submission.create!(title:"Alice", url:"http://i.imgur.com/A1DlHDR.jpg", description:"Hammock skateboard air plant 90's snackwave, XOXO actually. Activated charcoal next level irony authentic hot chicken. Fap scenester neutra woke williamsburg pok pok. Hot chicken tumblr mumblecore lyft. Biodiesel flexitarian seitan, pickled migas cliche raclette artisan venmo kinfolk master cleanse. Twee snackwave brooklyn stumptown. Actually cray asymmetrical pug, heirloom pok pok fap twee drinking vinegar hashtag marfa trust fund.", user_id:1)

earth = Submission.create!(title:"Sun", url:"http://i.imgur.com/XwRbskQ.png", description:"Poke man braid ethical, single-origin coffee vinyl af kitsch twee fingerstache viral thundercats lyft chillwave ramps austin. Kale chips retro bicycle rights meh butcher selfies. Yuccie occupy enamel pin knausgaard la croix actually, jean shorts master cleanse offal deep v messenger bag.", user_id:1, album_id:2)

sun = Submission.create!(title:"Sun", url:"http://i.imgur.com/wNWpDjm.png",description:"Pok pok mixtape artisan direct trade pug affogato. Truffaut readymade kogi fingerstache try-hard vinyl, cred scenester portland waistcoat pop-up chillwave distillery mixtape narwhal. Hell of disrupt PBR&B gluten-free banjo vice copper mug knausgaard. Literally cray trust fund fingerstache, quinoa austin try-hard polaroid 3 wolf moon paleo keytar. Pickled cronut glossier artisan iceland celiac. Iceland godard live-edge bespoke thundercats, tacos meggings distillery. Af live-edge swag, salvia meh blog taxidermy selvage godard pok pok celiac knausgaard keytar.", user_id:1)

comment1 = Comment.create!(text:"Iceland kinfolk migas poutine, typewriter tbh brooklyn jean shorts succulents chambray polaroid af jianbing hexagon. Forage cray put a bird on it, four loko la croix neutra mumblecore craft beer heirloom pickled ugh celiac swag. Four loko fap bespoke craft beer yr YOLO, fixie air plant vinyl health goth tumblr tousled 3 wolf moon.", submission_id:1, user_id:1)

comment2 = Comment.create!(text:"Post-ironic vegan biodiesel, lumbersexual narwhal deep v poke marfa. Offal seitan gentrify vape. Etsy brooklyn bitters listicle selvage. Taxidermy stumptown typewriter disrupt, meh art party portland kitsch pickled freegan etsy.", submission_id:1, user_id:1)

comment3 = Comment.create!(text:"Post-ironic vegan biodiesel, lumbersexual narwhal deep v poke marfa. Offal seitan gentrify vape. Etsy brooklyn bitters listicle selvage. Taxidermy stumptown typewriter disrupt, meh art party portland kitsch pickled freegan etsy.", submission_id:2, user_id:1)

comment4 = Comment.create!(text:"Post-ironic vegan biodiesel, lumbersexual narwhal deep v poke marfa. Offal seitan gentrify vape. Etsy brooklyn bitters listicle selvage. Taxidermy stumptown typewriter disrupt, meh art party portland kitsch pickled freegan etsy.", submission_id:3, user_id:1)
