### Installation (MacOS)

1. Install rbenv
2. Install ruby 2.7.0
3. Install chrome driver:

```
brew cask install chromedriver
```

4. Open project directory and run:

```
bundle install
```

### Running

Open project directory and run:

```
bundle exec rspec
``
To specify browser either edit `.env` file or run e.g.:

```
BROWSER=firefox bundle exec rspec
```

Available values are `firefox` and `chrome` but note that you have to install utilities for each first to make it work.
