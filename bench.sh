source setup_bench.sh
echo 'No Content'
ab_no_content
echo 'No Caching'
ab_no_cache
echo 'Russian Doll'
ab_russian
echo 'Russian Doll - No Digests'
ab_russian_no_digest
echo 'CacheRocket'
ab_rocket
echo 'CacheRocket - collection'
ab_rocket_collection
