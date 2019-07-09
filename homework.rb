
# 1. Return an array of each Student's full name, upper-cased

students = [
  {
      first_name: 'Ahmed',
      last_name: 'Al-Bahrani'
  },
  {
      first_name: 'Reem',
      last_name: 'AlHarbi',
  },
  {
      first_name: 'Mansour',
      last_name: 'Almohsen',
  }
]

  upper_case_full_names = []

 students.map do |i|

  upper_case_full_names.push("#{i[:first_name].upcase} #{i[:last_name].upcase} ")


end
p upper_case_full_names


# Answer
# AHMED AL-BAHRANI
# REEM ALHARBI
# MANSOUR ALMOHSEN


# 2. Find the first order for each user
users = [
  {
      name: 'Hanan',
      orders: [
          {
              description: 'a bike'
          }
      ]
  },
  {
      name: 'Abdulrahman',
      orders: [
          {
              description: 'bees'
          },
          {
              description: 'fishing rod'
          }
      ]
  },
  {
      name: 'Turki',
      orders: [
          {
              description: 'a MacBook'
          },
          {
              description: 'The West Wing DVDs'
          },
          {
              description: 'headphones'
          },
          {
              description: 'a kitten'
          }
      ]
  }
]

first_order_for_each_user = []

users.each do |i|
    first_order_for_each_user.push(i[:orders].first)
end
p first_order_for_each_user

# Answer
# {:description=>"a bike"}
# {:description=>"bees"}
# {:description=>"a MacBook"}

# 3. Find the average amount spent on coffee, per transaction, for each person
people = [
  {
      name: 'Ahlam',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Sulaiman',
      transactions: [
          {
              type: 'BIKES',
              amount: 800.00
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Norah',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'COFFEE',
              amount: 100.00
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  }
]


coffee_average_per_person = []


people.each do |i|
    count = 0
    average = 0
    i[:transactions].each do |t|
        # average = 0
        if t[:type] == "COFFEE"
            average += t[:amount].to_f
            count += 1
        end
    end
    average = average / count
    coffee_average_per_person.push({name: "#{i[:name]}", coffee_average: "#{average}"})
end

p coffee_average_per_person


# Answer
# {:name=>"Ahlam", :coffee_average=>5.93}
# {:name=>"Sulaiman", :coffee_average=>4.43}
# {:name=>"Norah", :coffee_average=>37.28666666666667}


# 4. Find the most expensive product for each store, with the store name:
stores = [
  {
      store_name: 'Jarir',
      products: [
          {
              description: 'Titanium',
              price: 9384.33
          },
          {
              description: 'Gold',
              price: 345.54
          }
      ]
  },
  {
      store_name: 'Tamimi',
      products: [
          {
              description: 'Silver',
              price: 654.44
          },
          {
              description: 'Ruby',
              price: 323.43
          }
      ]
  },
  {
      store_name: 'Souq',
      products: [
          {
              description: 'Opal',
              price: 345.43
          },
          {
              description: 'Sapphire',
              price: 899.33
          }
      ]
  }
]

 most_expensive_products_by_store = []


stores.each do |e|
    price = 0
    desc = ""
    e[:products].each do |i|
        if i[:price] > price
            price = i[:price]
            desc = i[:description]
        end
    end
    most_expensive_products_by_store.push({store_name: "#{e[:store_name]}", most_expensive_product: {description: "#{desc}", price: "#{max}"}})
end

p most_expensive_products_by_store

# Answer
# {:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
# {:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
# {:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}

#
# Bonus
# Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array
#
# Answer
#
# add a student
# Asma Baabdullah
# Do you want to continue ? (y/n)
# y
# add a student
# Fajr Albakiri
# Do you want to continue ? (y/n)
# y
# add a student
