# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# =============================
# Country
# =============================
countries = [
  { slug: 'ca', name: 'canada', label: 'Canada', flag: '🇨🇦' },
  { slug: 'us', name: 'united_states', label: 'United States', flag: '🇺🇸' },
  { slug: 'at', name: 'austria', label: 'Austria', flag: '🇦🇹' },
  { slug: 'az', name: 'azerbaijan', label: 'Azerbaijan', flag: '🇦🇿' },
  { slug: 'hr', name: 'croatia', label: 'Croatia', flag: '🇭🇷' },
  { slug: 'cy', name: 'cyprus', label: 'Cyprus', flag: '🇨🇾' },
  { slug: 'cz', name: 'czech_republic', label: 'Czech Republic', flag: '🇨🇿' },
  { slug: 'dk', name: 'denmark', label: 'Denmark', flag: '🇩🇰' },
  { slug: 'ee', name: 'estonia', label: 'Estonia', flag: '🇪🇪' },
  { slug: 'fi', name: 'finland', label: 'Finland', flag: '🇫🇮' },
  { slug: 'ge', name: 'georgia', label: 'Georgia', flag: '🇬🇪' },
  { slug: 'de', name: 'germany', label: 'Germany', flag: '🇩🇪' },
  { slug: 'gr', name: 'greece', label: 'Greece', flag: '🇬🇷' },
  { slug: 'hu', name: 'hungary', label: 'Hungary', flag: '🇭🇺' },
  { slug: 'is', name: 'iceland', label: 'Iceland', flag: '🇮🇸' },
  { slug: 'il', name: 'israel', label: 'Israel', flag: '🇮🇱' },
  { slug: 'jp', name: 'japan', label: 'Japan', flag: '🇯🇵' },
  { slug: 'kz', name: 'kazakhstan', label: 'Kazakhstan', flag: '🇰🇿' },
  { slug: 'lv', name: 'latvia', label: 'Latvia', flag: '🇱🇻' },
  { slug: 'lt', name: 'lithuania', label: 'Lithuania', flag: '🇱🇹' },
  { slug: 'mt', name: 'malta', label: 'Malta', flag: '🇲🇹' },
  { slug: 'no', name: 'norway', label: 'Norway', flag: '🇳🇴' },
  { slug: 'pl', name: 'poland', label: 'Poland', flag: '🇵🇱' },
  { slug: 'rs', name: 'serbia', label: 'Serbia', flag: '🇷🇸' },
  { slug: 'sk', name: 'slovakia', label: 'Slovakia', flag: '🇸🇰' },
  { slug: 'si', name: 'slovenia', label: 'Slovenia', flag: '🇸🇮' },
  { slug: 'se', name: 'sweden', label: 'Sweden', flag: '🇸🇪' },
]

countries.each do |country|
  Country.create(country)
end

# =============================
# City
# =============================
cities = [
  { country_code: 'ca', slug: 'vancouver', label: 'Vancouver' },
  { country_code: 'ca', slug: 'calgary', label: 'Calgary' },
  { country_code: 'ca', slug: 'edmonton', label: 'Edmonton' },
  { country_code: 'ca', slug: 'ottawa', label: 'Ottawa' },
  { country_code: 'ca', slug: 'winnipeg', label: 'Winnipeg' },
  { country_code: 'ca', slug: 'quebec', label: 'Quebec' },
]

cities.each do |city|
  City.create(city)
end

# =============================
# Category
# =============================
categories = [
  {
    slug:      'african',
    label:     'African',
    image_url: 'https://plus.unsplash.com/premium_photo-1695297515151-b2af3a60008d',
  },
  {
    slug:      'asian',
    label:     'Asian',
    image_url: 'https://images.unsplash.com/photo-1622643944007-450264a5f9a9',
  },
  {
    slug:      'american',
    label:     'American',
    image_url: 'https://plus.unsplash.com/premium_photo-1672242676665-39db88975682',
  },
  {
    slug:      'british',
    label:     'British',
    image_url: 'https://images.unsplash.com/photo-1583815950467-e7b26a5b56b3',
  },
  {
    slug:      'cajun',
    label:     'Cajun',
    image_url: 'https://images.unsplash.com/photo-1445979323117-80453f573b71',
  },
  {
    slug:      'caribbean',
    label:     'Caribbean',
    image_url:
               'https://images.unsplash.com/photo-1575950674322-3a1977724f2e',
  },
  {
    slug:      'chinese',
    label:     'Chinese',
    image_url:
               'https://images.unsplash.com/photo-1563245372-f21724e3856d',
  },
  {
    slug:      'french',
    label:     'French',
    image_url:
               'https://images.unsplash.com/photo-1477747219299-60f95c811fef',
  },
  {
    slug:      'german',
    label:     'German',
    image_url:
               'https://plus.unsplash.com/premium_photo-1661313627982-615bb6576cc5',
  },
  {
    slug:      'greek',
    label:     'Greek',
    image_url:
               'https://plus.unsplash.com/premium_photo-1670263780110-29dd7a136a51',
  },
  {
    slug:      'indian',
    label:     'Indian',
    image_url:
               'https://images.unsplash.com/photo-1625398407796-82650a8c135f',
  },
  {
    slug:      'irish',
    label:     'Irish',
    image_url:
               'https://images.unsplash.com/photo-1513271224036-f526ad664968',
  },
  {
    slug:      'italian',
    label:     'Italian',
    image_url:
               'https://images.unsplash.com/photo-1604068549290-dea0e4a305ca',
  },
  {
    slug:      'japanese',
    label:     'Japanese',
    image_url:
               'https://plus.unsplash.com/premium_photo-1679862071390-5b6bffa48a2a',
  },
  {
    slug:      'korean',
    label:     'Korean',
    image_url:
               'https://images.unsplash.com/photo-1498654896293-37aacf113fd9',
  },
  {
    slug:      'mediterranean',
    label:     'Mediterranean',
    image_url:
               'https://images.unsplash.com/photo-1554998171-89445e31c52b',
  },
  {
    slug:      'mexican',
    label:     'Mexican',
    image_url:
               'https://images.unsplash.com/photo-1615870216519-2f9fa575fa5c',
  },
  {
    slug:      'middle_eastern',
    label:     'Middle Eastern',
    image_url:
               'https://images.unsplash.com/photo-1520252729650-ddced2015543',
  },
  {
    slug:      'nordic',
    label:     'Nordic',
    image_url:
               'https://images.unsplash.com/photo-1657299156537-f4bcdced5392',
  },
  {
    slug:      'southern',
    label:     'Southern',
    image_url:
               'https://images.unsplash.com/photo-1605926637412-b0cd5a3e3543',
  },
  {
    slug:      'spanish',
    label:     'Spanish',
    image_url:
               'https://images.unsplash.com/photo-1515443961218-a51367888e4b',
  },
  {
    slug:      'thai',
    label:     'Thai',
    image_url:
               'https://images.unsplash.com/photo-1562565652-a0d8f0c59eb4',
  },
  {
    slug:      'vietnamese',
    label:     'Vietnamese',
    image_url:
               'https://images.unsplash.com/photo-1597345637412-9fd611e758f3',
  },
]

categories.each do |category|
  Category.create(category)
end

# =============================
# Allergy
# =============================

allergies = [
  {
    slug:  'dairy',
    label: 'Dairy',
  },
  {
    slug:  'egg',
    label: 'Egg',
  },
  {
    slug:  'gluten',
    label: 'Gluten',
  },
  {
    slug:  'grain',
    label: 'Grain',
  },
  {
    slug:  'peanut',
    label: 'Peanut',
  },
  {
    slug:  'seafood',
    label: 'Seafood',
  },
  {
    slug:  'sesame',
    label: 'Sesame',
  },
  {
    slug:  'shellfish',
    label: 'Shellfish',
  },
  {
    slug:  'soy',
    label: 'Soy',
  },
  {
    slug:  'sulfite',
    label: 'Sulfite',
  },
  {
    slug:  'tree-nut',
    label: 'Tree Nut',
  },
  {
    slug:  'wheat',
    label: 'Wheat',
  },
]

allergies.each do |allergy|
  Allergy.create(allergy)
end

# =============================
# Restaurant
# =============================

japanese_category = Category.find_or_create_by(slug: 'japanese')
italian_category = Category.find_or_create_by(slug: 'italian')

egg_allergy = Allergy.find_or_create_by(slug: 'egg')
dairy_allergy = Allergy.find_or_create_by(slug: 'dairy')

sushi_place = Restaurant.create(
  name:             'Sushi Place',
  slug:             'sushi-place',
  description:      'Authentic Japanese Sushi',
  address:          '123 Main Street, City',
  eye_catch_image:  'https://images.unsplash.com/photo-1611143669185-af224c5e3252',
  cover_image:      'https://images.unsplash.com/photo-1579871494447-9811cf80d66c',
  min_order_amount: 20
)
sushi_place.categories << japanese_category
sushi_place.allergies << egg_allergy

italian_pizza = Restaurant.create(
  name:             'Italian Pizza',
  slug:             'italian-pizza',
  description:      'Delicious Italian Pizza',
  address:          '456 Oak Street, Town',
  eye_catch_image:  'https://images.unsplash.com/photo-1533777324565-a040eb52facd',
  cover_image:      'https://images.unsplash.com/photo-1447279506476-3faec8071eee',
  min_order_amount: 25
)
italian_pizza.categories << italian_category
italian_pizza.allergies << dairy_allergy
italian_pizza.allergies << egg_allergy

# =============================
# Menu
# =============================
menu_items = [
  {
    name:            'Sushi Roll',
    description:     'Delicious sushi roll',
    price:           8.99,
    eye_catch_image: 'https://images.unsplash.com/photo-1676037150304-e4c4a1d585f7',
    allergies:       [egg_allergy],
  },
  {
    name:            'Sashimi Plate',
    description:     'Fresh sashimi assortment',
    price:           12.99,
    eye_catch_image: 'https://images.unsplash.com/photo-1534256958597-7fe685cbd745',
    allergies:       [egg_allergy],
  },
  {
    name:            'Tempura',
    description:     'Crispy tempura assortment',
    eye_catch_image: 'https://images.unsplash.com/photo-1651328236028-77b585d3f4e5',
    price:           10.99,
  },
]

menu_items.each do |item|
  sushi_place.menu_items.create(item)
end
