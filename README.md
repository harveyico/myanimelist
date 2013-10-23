# Myanimelist
An API for http://myanimelist.net for searching animes and mangas up to date!

## Installation

Add this line to your application's Gemfile:

    gem 'myanimelist', '~> 0.0.2'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install myanimelist

### Configuration
MyAnimeList API requires authentication from the actual site, so you need to sign up first 
<a href="http://myanimelist.net/register.php">here</a>

After signing up and verifying your email, you need to assign the username and password on your respective myanimelist API,
here's what you need to do:
If you are using 
#####Rails: 
make a file named `config/initializers/myanimelist.rb`:
```ruby
MyAnimeList.configure do |config|
    config.username = "username"
    config.password = "password"
end
```
If you are not using rails make sure to set this up before you can start searching.

## Usage
#####For Anime:
```ruby
    MyAnimeList.search_anime("Anime name here.")
```
####For Manga:
```ruby
    MyAnimeList.search_manga("Manga name here.")
```

Simple isn't it?

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## That's it, Thanks and have fun :)
