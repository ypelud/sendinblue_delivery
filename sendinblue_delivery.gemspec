Gem::Specification.new do |s|
  s.name        = 'sendinblue_delivery'
  s.version     = '0.1.2'
  s.date        = '2016-06-06'
  s.summary     = "SendinBlue delivery"
  s.description = "Add a delivery method for SendinBlue to rails"
  s.authors     = ["Yann-Cyril PELUD"]
  s.email       = 'ypelud@gmail.com'

  s.files = ["lib/sendinblue_delivery.rb"]

  s.homepage    =
    'https://github.com/ypelud/sendinblue_delivery.git'
  s.license       = 'MIT'

  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')

  s.add_development_dependency "rake", '~> 11.1'
  s.add_development_dependency "rails", '~> 4.0'
  s.add_development_dependency "minitest", '~> 5.0'
  s.add_development_dependency "byebug", '~> 9.0'

  s.add_runtime_dependency 'sendinblue', '~> 2.4'
end
