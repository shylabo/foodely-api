# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

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
