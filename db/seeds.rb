# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alng:side the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Ring:s' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do 
    Band.create(
        name: Faker::Music.unique.band,
        wallet: 1,
        desc: Faker::Lorem.paragraph(sentence_count: 6, supplemental: true, random_sentences_to_add: 3)
       
    )
end
13.times do 
    Genre.create(
        name: Faker::Music.unique.genre,

    )
end
120.times do 
    Bandgenre.create(
        band_id: rand(1..150),
        genre_id: rand(1..13)
    )

end 
Venue.create(name:"Hotel Vegas",lat:30.263895,lng:97.727159,location:"1502 E 6th St, Austin, TX 78702")
Venue.create(name: "Whislers",lat:30.262820,lng:97.722653,location:"1816 E 6th St, Austin, TX 78702")
Venue.create(name:"The White Horse",lat:30.262818,lng:97.726963,location:"500 Comal St, Austin, TX 78702")
Venue.create(name:"Violet Crown Social Club",lat:30.264541,lng:97.730782,location:"1111 E 6th St, Austin, TX 78702")
Venue.create(name:"Stubbs Bar-B-Q",lat:30.268702,lng:97.736243,location:"801 Red River St, Austin, TX 78701")
Venue.create(name:"The Grove Wine Bar & Kitchen",lat:30.270695,lng:97.750845,location:"800 W 6th St #100, Austin, TX 78701")
Venue.create(name:"The Jackalope",lat:30.267268,lng:97.738925,location:"404 East 6th, Austin, TX 78701")
Venue.create(name:"Unbarlievable",lat:30.258925,lng:97.738972,location:"76 Rainey St, Austin, TX 78701")
Venue.create(name:"Container Bar",lat:30.260361 ,lng:97.738406, location:"90 Rainey St, Austin, TX 78701")

@date = 
{
:year=>[2020], 
:month=>(1..12).to_a, 
:day=>(1..31).to_a, 
:hour=>(1..12).to_a, 
:min=>[0, 30]
}


200.times do 
    Show.create(
band_id: rand(1..150),
venue_id: rand(1..8),
time: DateTime.new(@date[:year][rand(0)],
@date[:month][rand(0..11)],
@date[:day][rand(0..29)],
@date[:hour][rand(0..11)],
@date[:min][rand(0..1)]))


end 


