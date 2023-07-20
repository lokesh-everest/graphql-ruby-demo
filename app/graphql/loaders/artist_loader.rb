module Loaders
  class ArtistLoader
    attr_reader :query_context, :artists

    def initialize(query_context:, artist_id:, artists: Artist)
      @artist_id = artist_id
      @artists = artists
      @query_context = query_context
      @lazy_state = query_context[self.class.name.underscore.to_sym] ||= initialize_lazy_state

      @lazy_state[:pending_ids] << @artist_id
    end

    def resolve
      loaded_record = @lazy_state[:loaded_ids][@artist_id]
      if loaded_record
        loaded_record
      else
        pending_ids = @lazy_state[:pending_ids].to_a
        artists_records = artists.where(id: pending_ids)
        artists_records.each do |artist|
          @lazy_state[:loaded_ids][artist.id] = artist
        end
        @lazy_state[:pending_ids].clear
        @lazy_state[:loaded_ids][@artist_id]
      end
    end

    def initialize_lazy_state
      {
        pending_ids: Set.new,
        loaded_ids: {}
      }
    end
  end
end
