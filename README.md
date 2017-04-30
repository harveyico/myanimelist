# MyAnimeList
An API for http://myanimelist.net for searching animes and mangas up to date!
For additional documentation, visit: http://myanimelist.net/modules.php?go=api
## Installation

Add this line to your application's Gemfile:

    gem 'myanimelist', '~> 0.0.6'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install myanimelist

### Configuration
MyAnimeList API requires authentication from the actual site, so you need to sign up first
<a href="http://myanimelist.net/register.php">here</a>

After signing up and verifying your email, you need to assign the username and password on your respective myanimelist API,
here's what you need to do,
If you are using Rails: setup `config/initializers/myanimelist.rb`:
```ruby
MyAnimeList.configure do |config|
    config.username = "username"
    config.password = "password"
end
```
If you are not using rails make sure to set this up before you can start searching.

## Usage
####For Anime:
```ruby
    MyAnimeList.search_anime("Anime name here.")
```
####For Manga:
```ruby
    MyAnimeList.search_manga("Manga name here.")
```

####To verify credentials:
```ruby
if MyAnimeList.verify_credentials
  puts 'Ok!'
else
  puts 'Wrong username and/or password'
end
```

Simple isn't it?

##Example
```ruby
    MyAnimeList.search_anime('Fairy Tail')

    #will result to the followinghash

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
