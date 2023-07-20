module Mutations
  class CreateArtist < BaseMutation
    description "Create an artist"

    argument :email, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true

    field :artist, Types::ArtistType, null: false

    def resolve(email:, first_name:, last_name:)
      artist = Artist.create!(
        email: email,
        first_name: first_name,
        last_name: last_name
      )
      { artist: artist }
    end

  end
end