# Cider

Something like migrations but for seeds. You know... loaded once bla-bla-bla...

## Installation

Add this line to your application's Gemfile. Preferably - to `development` group:

    gem 'cider'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cider

## Usage

Create new cider:

    $ rails generate cider FooBar
    =>       create  db/ciders/20130101000000_foo_bar.rb

Open generated `db/ciders/20130101000000_foo_bar.rb` file and write migration like you do with seeds.
Now you are ready to roll!

    $ rake db:cider

That is all! Every cider file loaded only once (like migrations do).

## Remove/Reset cider

    $ rake db:reset_cider

Will remove cider DB table. This effectively resets `cider` gem. Now `rake db:cider` will load all ciders once again. And if you would like to remove gem - remove it from your Gemfile.
You can remove underlying table by hand. Its called `ciders`.
Happy development!

There is no `rollback`/`redo` options. Create new cider and be happy ;-)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
