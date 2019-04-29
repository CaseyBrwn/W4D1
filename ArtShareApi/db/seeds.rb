# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

u1 = User.create!(username: 'Piccaso')
u2 = User.create!(username: 'Michael Angelo')
u3 = User.create!(username: 'Leonardo Da Vinci')
u4 = User.create!(username: 'Anon')

art1 = Artwork.create!(title: 'Guernica', image_url: 'tiny_url.com', artist_id: u1.id)
art2= Artwork.create!(title: 'Science and Charity', image_url: 'tiny_url.com', artist_id: u1.id)
art3 = Artwork.create!(title: 'Self Portrait', image_url: 'tiny_url.com', artist_id: u1.id)

art4 = Artwork.create(title: 'The Create of Adam', image_url: 'tiny_url.com', artist_id: u2.id)
art5 = Artwork.create(title: 'The Last Judgement', image_url: 'tiny_url.com', artist_id: u2.id)

art6 = Artwork.create(title: 'Mona Lisa' , image_url: 'tiny_url.com', artist_id: u3.id)


ArtworkShare.create!(viewer_id: u1.id, artwork_id:art4.id)
ArtworkShare.create!(viewer_id: u1.id, artwork_id:art5.id)
ArtworkShare.create!(viewer_id: u1.id, artwork_id:art6.id)

ArtworkShare.create!(viewer_id: u2.id, artwork_id:art1.id)
ArtworkShare.create!(viewer_id: u2.id, artwork_id:art2.id)
ArtworkShare.create!(viewer_id: u2.id, artwork_id:art3.id)
ArtworkShare.create!(viewer_id: u2.id, artwork_id:art6.id)


ArtworkShare.create!(viewer_id: u3.id, artwork_id:art1.id)
ArtworkShare.create!(viewer_id: u3.id, artwork_id:art2.id)
ArtworkShare.create!(viewer_id: u3.id, artwork_id:art3.id)
ArtworkShare.create!(viewer_id: u3.id, artwork_id:art4.id)
ArtworkShare.create!(viewer_id: u3.id, artwork_id:art5.id)



ArtworkShare.create!(viewer_id: u4.id, artwork_id:art1.id)
ArtworkShare.create!(viewer_id: u4.id, artwork_id:art2.id)
ArtworkShare.create!(viewer_id: u4.id, artwork_id:art3.id)
ArtworkShare.create!(viewer_id: u4.id, artwork_id:art4.id)
ArtworkShare.create!(viewer_id: u4.id, artwork_id:art5.id)
ArtworkShare.create!(viewer_id: u4.id, artwork_id:art6.id)