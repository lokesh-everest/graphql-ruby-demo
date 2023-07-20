module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :albums, [Types::AlbumType]

    field :artists, [Types::ArtistType]

    def albums
      Album.all
    end

    def artists
      Artist.all
    end
  end
end
