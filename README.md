



## N+1 Query

**N+1 Query problem happens when code executes N additional statements to fetch the same data that could have been retrieved from primary query**

Fetch all the albums along with corresponding artists

* Fetch all the albums data along with artist id it belongs to

  `Select * from albums`
    * Album 1
    * Album 2
    * Album 3
* For each albums look for corresponding artist id
    * Fetch the artist details

  ```SELECT "artists".* FROM "artists" WHERE "artists"."id" = id LIMIT 1```
* Repeat the above step for all albums
  If there are n albums we will make N queries to fetch artists info
* Even though the rails internally caches
  queries https://docs.gitlab.com/ee/development/cached_queries.html#:~:text=Rails%20provides%20an%20SQL%20query,query%20against%20the%20database%20again.

For example we can do

instead of

```ruby
Album.all
```

we can do

````ruby
Album.includes(:artists).all
````

This is early **eager loading**.

But its not suitable for graphql because client can request data in infinite ways.

## DataLoader Pattern

Lazy loading

Better to show in code


Explain
- [ ] Schema
- [ ] Fields
- [ ] Resolvers
- [ ] Query
- [ ] Mutation
- [ ] Loader
- [ ] Adding new model
- [ ] Adding corresponding queries for it
- [ ] Adding mutation for it
