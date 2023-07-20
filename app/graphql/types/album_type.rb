# frozen_string_literal: true

module Types
  class AlbumType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :image_url, String
    field :artist_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :artist, Types::ArtistType, null: false

    field :comments, [Types::CommentType], null: false


    def comments
      Comment.where(album_id: object.id)
    end

    def artist
      Loaders::ArtistLoader.new(query_context: context,artist_id: object.artist_id)
    end
  end
end
