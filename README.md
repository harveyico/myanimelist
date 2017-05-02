# MyAnimeList
A gem wrapper for http://myanimelist.net that covers all the methods available on the current API
For additional documentation, visit: http://myanimelist.net/modules.php?go=api

## Installation

Add this line to your application's Gemfile:

    gem 'myanimelist', '~> 1.0'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install myanimelist

### Configuration
MyAnimeList API requires authentication from the actual site, so you need to sign up first [here](http://myanimelist.net/register.php).

After signing up and verifying your email, you need to assign the username and password on your respective myanimelist API,
here's what you need to do,
If you are using Rails: setup `config/initializers/myanimelist.rb`:
```ruby
MyAnimeList.configure do |config|
    config.username = ENV['username']
    config.password = ENV['password']
end
```
If you are not using rails make sure to set this up before you can start searching.

## Usage
#### Verify Credentials
Additional step for verifying credentials from myanimelist.
```
MyAnimeList.verify_credentials
```

#### Search Anime/Manga
Returns an Array of Hashes for the result.
```
# Anime
> MyAnimeList.search_anime('Fairy Tail')
> MyAnimeList::Anime.search('Fairy Tail')

# Manga
> MyAnimeList.search_manga('Fairy Tail')
> MyAnimeList::Manga.search('Fairy Tail'
```

#### Add Anime/Manga
Adds anime/manga on your list. For additional `Anime` parameters, please refer [here](https://myanimelist.net/modules.php?go=api#animevalues). For `Manga`, please refer [here](https://myanimelist.net/modules.php?go=api#mangavalues).
Just imagine that the xml value would be the key:value pair in ruby, as seen below.
```
# Anime
> MyAnimeList::Anime.add(anime_id, { episode: 1, status: 2 })
=> true

# Manga
> MyAnimeList::Manga.add(manga_id, { chapter: 1 })
=> true
```

#### Update Anime/Manga
Updates anime/manga on your list. For additional `Anime` parameters, please refer [here](https://myanimelist.net/modules.php?go=api#animevalues). For `Manga`, please refer [here](https://myanimelist.net/modules.php?go=api#mangavalues).
Just imagine that the xml value would be the key:value pair in ruby, as seen below.
```
# Anime
> MyAnimeList::Anime.update(anime_id, { episode: 1, status: 2 })
=> true

# Manga
> MyAnimeList::Manga.update(manga_id, { chapter: 1 })
=> true
```

#### Remove Anime/Manga
Remove anime/manga on your list.
```
# Anime
> MyAnimeList::Anime.remove(anime_id)
=> true

# Manga
> MyAnimeList::Manga.remove(manga_id)
=> true
```

## Example
```ruby
    MyAnimeList.search_anime('Fairy Tail')

    # will result to the followinghash

    =>   [{"id"=>"6702",
            "title"=>"Fairy Tail",
            "english"=>nil,
            "synonyms"=>nil,
            "episodes"=>"175",
            "score"=>"8.57",
            "type"=>"TV",
            "status"=>"Finished Airing",
            "start_date"=>"2009-10-12",
            "end_date"=>"2013-03-30",
            "synopsis"=>
                  "Set in an imaginary world, the Earth Land, there exists a Mage Guild called Fairy Tail...",
            "image"=>"http://cdn.myanimelist.net/images/anime/5/18179.jpg"}
        }]

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Thanks
[MyAnimeList](myanimelist.net) for the API.

**myanimelist** © 2013+, Harvey Ico. Released under the [MIT](http://mit-license.org/) License.

Authored and maintained by Harvey Ico with help from contributors ([list](https://github.com/harveyico/myanimelist/contributors)).
