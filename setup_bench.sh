ab_no_content() {
  ab -r -n 15 http://127.0.0.1:3000/cats/1 | grep -m 1 " per request"
}
ab_no_cache() {
  ab -r -n 15 http://127.0.0.1:3000/none | grep -m 1 " per request"
}
ab_russian() {
  ab -r -n 15 http://127.0.0.1:3000/russian | grep -m 1 " per request"
}
ab_russian_no_digest() {
  ab -r -n 15 http://127.0.0.1:3000/russian_nodigest | grep -m 1 " per request"
}
ab_rocket() {
  ab -r -n 15 http://127.0.0.1:3000/replace | grep -m 1 " per request"
}
ab_rocket_collection() {
  ab -r -n 15 http://127.0.0.1:3000/replace_collection | grep -m 1 " per request"
}

export -f ab_no_content
export -f ab_no_cache
export -f ab_russian
export -f ab_russian_no_digest
export -f ab_rocket
export -f ab_rocket_collection

