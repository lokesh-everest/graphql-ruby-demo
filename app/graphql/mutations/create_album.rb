module Mutations
  class CreateAlbum < BaseMutation
    description "Create a album"

    argument :title, String, required: true
    argument :description, String, required: true
    argument :image_url, String, required: true
    argument :artist_id, String, required: true

    field :album, Types::AlbumType, null: false

    def resolve(title:, description:, artist_id:, image_url:)
      album = Album.create!(
        title: title,
        description: description,
        artist_id: artist_id,
        image_url: image_url
      )
      { album: album }
    end
  end
end