# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#  description :text             not null
#  sex         :string(1)        not null
#  name        :string           not null
#  color       :string           not null
#  birth_date  :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null

#

cat1 = Cat.create(name: 'Alfi', sex: 'M', color: 'Brown', birth_date: '2017/06/20', description: 'Coolest cat sometimes')
cat2 = Cat.create(name: 'Autumn', sex: 'F', color: 'Orange', birth_date: '2005/08/20', description: "An orange cat. I didn't like her that much")
cat3 = Cat.create(name: 'Walker', sex: 'M', color: 'Brown', birth_date: '1990/06/23', description: 'Walker is our TA')
cat4 = Cat.create(name: 'Michelle', sex: 'F', color: 'Tabby', birth_date: '1900/01/13', description: 'Michelle is cool')
cat5 = Cat.create(name: 'Vanessa', sex: 'F', color: 'Orange', birth_date: '2003/09/13', description: 'Vanessa is great')