class ServerSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  lazy_resolve(Loaders::ArtistLoader, :resolve)
end
