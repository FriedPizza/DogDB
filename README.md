# README

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes

### Prerequisites

Install Ruby version 2.4.5
- For windows, download and run the executable file here: https://rubyinstaller.org/downloads/

- For linux, just enter the command:
```
$ sudo apt-get install ruby 2.4.5
```

Install Rails 5.2.1
If you have Ruby, just enter the command:
```
$ gem install rails
```

Install Bundler
```
$ gem install bundler
```

### Installation

Install dependencies
```
$ bundle install
```

Make sure that sqlite3 is updated
```
$ bundle update sqlite3
```

### Running

Migrate the database and set the rails environment to development
```
$ rails db:migrate RAILS_ENV=development
```

Seed the database, i.e. populate the database with data
```
$ rails db:seed
```

Initialize the rails server
```
$ rails s
```

Enter "localhost:3000" in the URL of your browser
