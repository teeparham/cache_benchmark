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

### Speed
```
No Caching             123 ms
Russian Doll*           67 ms
CacheRocket            113 ms
CacheRocket collection  82 ms
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

```sh
source bench.sh
```

