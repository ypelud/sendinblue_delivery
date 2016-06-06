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
config.action_mailer.add_delivery_method :sendinbluemail, SendinblueDelivery
config.action_mailer.sendinbluemail_settings = {
  url: 'https://api.sendinblue.com/v2.0',
  key: '<your key>',
  timeout: 5
}

config.action_mailer.delivery_method = :sendinbluemail
```
