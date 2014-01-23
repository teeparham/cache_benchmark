# Cache Benchmark

This app tests different Rails caching techniques.

The index action lists 100 cats. There are different controllers that render the same page using different
caching techniques. The development environment is set up like a typical rails production environment
with caching turned on.

The `/none` page renders the page with no caching, for reference.

## Caching Techniques

* No Caching (baseline, for comparision)
* Russian Doll Caching
* Russian Doll Caching without digests
* Cache Rocket
* Cache Rocket with collection

## Results

### Speed (warm cache)

```
No Caching             125 ms
Russian Doll*           66 ms
CacheRocket            114 ms
CacheRocket collection  83 ms

* baseline, but content is not cacheable
```

### Efficiency
```
                 Hits  Misses
Russian Doll     1400     100
CacheRocket        14       1 
```

## Development

### Setup

```sh
git clone https://github.com/teeparham/cache_benchmark.git
cd cache_benchmark
bundle
rake db:setup
```

### Run Benchmarks

Run these in different terminal tabs:

```sh
memcached
rails s
source bench.sh
```
