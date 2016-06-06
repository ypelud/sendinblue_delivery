## sendinblue_delivery
Add a delivery method for SendinBlue to rails

# Installation
Add this line to your application's Gemfile:

```ruby
gem 'sendinblue_delivery'
```

And then execute:
```shell
  $ bundle
```

Or install it yourself as:

```shell
$ gem install sendinblue_delivery
```

# Configuration
Add this to your appropriate config/environments/$RAILS_ENV.rb:

```ruby
ActionMailer::Base.add_delivery_method :sendinbluemail, SendinblueDelivery

ActionMailer::Base.sendinbluemail_settings = {
  url: 'https://api.sendinblue.com/v2.0',
  key: '<your key>',
  timeout: 5
}

ActionMailer::Base.delivery_method = :sendinbluemail
```

# run tests

```shell
$ SENDINBLUE_KEY=<my secret key> SENDINBLUE_MAIL=<email> rake test
```
