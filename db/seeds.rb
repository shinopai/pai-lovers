# 2.times do 
#   User::create([
#     'name' => Faker::Name.name,
#     'email' => Faker::Internet.email,
#     'password' => 'password',
#     'password_confirmation' => 'password',
#     'age' => rand(1..43),
#     'sex' => rand(1..2),
#     'blood_type' => rand(1..4),
#     'body_shape' => rand(1..7),
#     'height' => rand(18..68),
#     'residence' => rand(1..47),
#     'birth_place' => rand(1..47),
#     'holiday' => rand(1..4),
#     'work' => rand(1..55),
#     'profile_image' => 'profile-image.png'
#   ])
# end

15.times do
  Community::create([
    'category_id' => rand(1..12),
    'name' => Faker::Music::Hiphop.groups,
    'community_image' => 'community.png'
  ])
end



