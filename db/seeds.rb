# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
# Roles

Spree::Role.find_or_create_by(name: 'stylist')
Spree::Role.find_or_create_by(name: 'vendor')
Spree::Property.find_or_create_by(name: 'Brand', presentation: 'Brand')
Spree::Property.find_or_create_by(name: 'Fabric', presentation: 'Fabric')
Spree::Property.find_or_create_by(name: 'Sizes', presentation: 'Sizes')

# New Attributes
Spree::PermittedAttributes.product_attributes << [:vendor]
Spree::PermittedAttributes.product_attributes << [:approved]
Spree::PermittedAttributes.product_attributes << [:image]
Spree::PermittedAttributes.product_attributes << [:gender]
Spree::PermittedAttributes.product_attributes << [:test]
Spree::PermittedAttributes.product_attributes << [:swiped]
Spree::PermittedAttributes.user_attributes << [:vendorname]
Spree::PermittedAttributes.product_attributes << [:vendorSKU]

default_specs = [
  ["clothing-type","top"],["clothing-type","pants"],["clothing-type","shoes"],["clothing-type","accessory"],

  ["fit","loose"],["fit","regular"],["fit","slim"],["fit","skinny"],
  ["color-scheme","monochromatic"],["color-scheme","pattern"],["color-scheme","print"],
  ["cuffs","none"],["cuffs","elastic"],["cuffs","buttoned"],["cuffs","puffed"],
  ["zipper","none"],["zipper","button"],["zipper","edge-to-edge"],["zipper","invisible"],
  ["fabric","cotton"],["fabric","silk"],["fabric","linen"],["fabric","polyester"],["fabric","jeans"],["fabric","lycra"],["fabric","khaki"],["fabric","athletic"],["fabric","leather"],["fabric","foam"],["fabric","generic"],["fabric","other"],

  ["top-type","formal-shirt"],["top-type","casual-shirt"],["top-type","sweater"],["top-type","hoodie"],["top-type","jacket"],["top-type","dress"],["top-type","vest"],["top-type","coat"],
  ["collar","classic"],["collar","buttoned"], ["collar","mandarin"], ["collar","round"],["collar","v-neck"],["collar","polo"],["collar","henley"],["collar","scoop"],["collar","cowl"],["collar","boat"],["collar","off-shoulder"],["collar","asymmetric"],["collar","turtle-neck"],
  ["top-cut","regular"],["top-cut","crop"],
  ["sleeve","none"],["sleeve","cap"],["sleeve","short"],["sleeve","three-quraters"],["sleeve","long"],

  ["shoe-type","boots"],["shoe-type","athletic"],["shoe-type","casual"],["shoe-type","formal"],
  ["shoe-height","knee"],["shoe-height","high"],["shoe-height","regular"],["shoe-height","low"],
  ["heel","flat"],["heel","low"],["heel","medium"],["heel","high"],
  ["lace","none"],["lace","lace"],["lace","velcro"],["lace","button"],

  ["pants-length","floor"],["pants-length","ankle"],["pants-length","above-ankle"],["pants-length","calf"],["pants-length","knee"],["pants-length","short"],["pants-length","mini"],["pants-length","micro"],
  ["pants-cut","straight"],["pants-cut","boot"],["pants-cut","wide"],["pants-cut","cargo"],["pants-cut","sweat"],["pants-cut","jump-suit"],["pants-cut","carpenter"],
  ["rise","super-high"],["rise","high"],["rise","medium"],["rise","medium-to-low"],["riserise","low"],["rise","super-low"],
  ["band","button"],["band","zipper"],["band","elastic"],["band","tie"],
  ["crotch","regular"],["crotch","sarouel"],
  ["pockets","none"],["pockets","small"],["pockets","regular"],["pockets","cargo"],
  ["gender","male"], ["gender","female"], ["gender","unisex"]
]

default_specs.each do |spec|
  if !Spec.where(name: spec[0], value: spec[1]).exists?
    Spec.create(name: spec[0], value: spec[1]).save!
    puts "#{spec[0]}: #{spec[1]} created."
  end
end

unless Spree::User.where(email: "vendor@labbesne.com").exists?
  @vendor = Spree::User.new
  @vendor.email = "vendor@labbesne.com"
  @vendor.password = "123456"
  @vendor.spree_roles << Spree::Role.where(name: "vendor").first
  if @vendor.save!
    puts "Vendor dummy account created with email " + @vendor.email
  end
end

body_types = ['V Shape', 'Pear Shape', 'Rectangle Shape', 'Oval Shape', 'Hourglass Shape']

body_types.each do |bt|
  if !BodyType.where(name: bt).exists?
    b = BodyType.new(name: bt)
    b.save!
    puts "Created #{b.name} BodyType"
  end
end

job_types = ['Corporate, Desk Job', 'Corporate, Outdooor Job', 'Service, Uniform Job', 'Service, Casual Dresscode', 'Self-employed', 'Other']

job_types.each do |jt|
  if !JobType.where(name: jt).exists?
    j = JobType.new(name: jt)
    j.save!
    puts "Created #{j.name} JobType"
  end
end

outdoor_levels = ['Adventurous (Weekly Outdoor Activities)', 'Moderate (Monthly/Seasonal Outdoor Activity)', 'Urban (Barely any Outdoor Activity)']

outdoor_levels.each do |ol|
  if !OutdoorLevel.where(level: ol).exists?
    o = OutdoorLevel.new(level: ol)
    o.save!
    puts "Created #{o.level} Outdoor Level"
  end
end

social_activities = ['Daily Socialization', 'Moderate Socialization', 'Occassional Socialization']

social_activities.each do |sa|
  if !SocialActivity.where(name: sa).exists?
    s = SocialActivity.new(name: sa)
    s.save!
    puts "Created #{s.name} SocialActivity"
  end
end

activity_levels = ['Active Lifestyle (At least an hour of daily physical activity)', 'Moderate Activity (I move around often)', 'Sedentary Lifestyle (I only move when I have to)']

activity_levels.each do |al|
  if !ActivityLevel.where(name: al).exists?
    a = ActivityLevel.new(name: al)
    a.save!
    puts "Created #{a.name} ActivityLevel"
  end
end
