# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
family = [
	{
		 first_name: "kristy",
		 last_name: "malochee",
		 mid_name: "a",
		 aka: "mom",
		 sex: "F",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1958, 1, 20),
		 death_date: nil
	},{
		 first_name: "pierre",
		 last_name: "malochee",
		 mid_name: "j",
		 aka: "pop",
		 sex: "M",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1956, 2, 9),
		 death_date: nil
	},{
		 first_name: "joseph",
		 last_name: "malochee",
		 mid_name: "p",
		 aka: "joe",
		 sex: "M",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1984, 8, 5),
		 death_date: nil
	},{
		 first_name: "jennifer",
		 last_name: "williams",
		 mid_name: "brooke",
		 aka: "brooke",
		 sex: "F",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1979, 6, 1),
		 death_date: nil
	},{
		 first_name: "bruce",
		 last_name: "malochee",
		 mid_name: "wayson",
		 aka: nil,
		 sex: "M",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(2011, 8, 6),
		 death_date: nil
	},{
		 first_name: "sierra",
		 last_name: "malochee",
		 mid_name: "birch",
		 aka: "birch",
		 sex: "F",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(2016, 1, 23),
		 death_date: nil
	},{
		 first_name: "maurice",
		 last_name: "malochee",
		 mid_name: "g",
		 aka: "moe",
		 sex: "M",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1986, 9, 14),
		 death_date: nil
	},{
		 first_name: "andrea",
		 last_name: "malochee",
		 mid_name: nil,
		 aka: nil,
		 sex: "F",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1987, 1, 15),
		 death_date: nil
	},{
		 first_name: "elija",
		 last_name: "malochee",
		 mid_name: "t",
		 aka: "eli",
		 sex: "M",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(2015, 6, 23),
		 death_date: nil
	},{
		 first_name: "amalie",
		 last_name: "eig",
		 mid_name: "M",
		 aka: "amie",
		 sex: "F",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1982, 11, 21),
		 death_date: nil
	},{
		 first_name: "adam",
		 last_name: "eig",
		 mid_name: nil,
		 aka: nil,
		 sex: "M",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1980, 7, 12),
		 death_date: nil
	},{
		 first_name: "rief",
		 last_name: "eig",
		 mid_name: nil,
		 aka: "rere",
		 sex: "M",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(2016, 1, 9),
		 death_date: nil
	},{
		 first_name: "andre",
		 last_name: "malochee",
		 mid_name: "l",
		 aka: "nick",
		 sex: "M",
		 father_id: nil,
		 mother_id: nil,
		 current_spouse_id: nil,
		 birth_date: Date.new(1989, 11, 10),
		 death_date: nil
	}
]

family.each do |member|
	Member.create!(member)
end
