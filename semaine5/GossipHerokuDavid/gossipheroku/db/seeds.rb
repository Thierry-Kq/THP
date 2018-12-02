


20.times do
  User.create(first_name:Faker::LeagueOfLegends.champion)
end

40.times do
  Gossip.create(content:Faker::LeagueOfLegends.quote,author_id:rand(User.first.id..User.last.id))
end