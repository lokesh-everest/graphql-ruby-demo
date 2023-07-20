module Types
  class MutationType < Types::BaseObject
    field :add_album, mutation: Mutations::CreateAlbum
    field :add_artist, mutation: Mutations::CreateArtist
  end
end
