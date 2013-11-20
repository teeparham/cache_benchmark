module StatsHelper
  def keys
    [
      :cmd_get,
      :cmd_set,
      :get_hits,
      :get_misses,
      :curr_items,
      :bytes,
      :limit_maxbytes,
      #:total_items,
      #:evictions,
      #:reclaimed,
      #:bytes_read,
      #:bytes_written,
    ]
  end

  def stats
    @stats ||= Rails.cache.stats.first.last.symbolize_keys
  end
end
