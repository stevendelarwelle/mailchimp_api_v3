# mailchimp_api_v3


![Gem Version](http://img.shields.io/gem/v/mailchimp_api_v3.svg?style=flat)&nbsp;[![Code Climate](http://img.shields.io/codeclimate/github/Xenapto/mailchimp_api_v3.svg?style=flat)](https://codeclimate.com/github/Xenapto/mailchimp_api_v3)&nbsp;[![Coverage Status](https://img.shields.io/coveralls/Xenapto/mailchimp_api_v3.svg?style=flat)](https://coveralls.io/r/Xenapto/mailchimp_api_v3?branch=master)
[![Developer status](http://img.shields.io/badge/developer-awesome-brightgreen.svg?style=flat)](http://xenapto.com)
![build status](https://circleci.com/gh/Xenapto/mailchimp_api_v3/tree/develop.svg?style=shield&circle-token=a2e39ddd53c02e4f1ccb4d89cb97f406915874c7)

A simple gem to interact with Mailchimp through their API v3

## Installation

Add this line to your application's Gemfile:

    gem 'mailchimp_api_v3'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mailchimp_api_v3

## Usage

Examples:

```ruby
Mailchimp.new(mc_key).lists
```

## Contributing

1.  Fork it
1.  Create your feature branch (`git checkout -b my-new-feature`)
1.  Commit your changes (`git commit -am 'Add some feature'`)
1.  Push to the branch (`git push origin my-new-feature`)
1.  Create new Pull Request

## Acknowledgements

1.  I used the sample code in https://github.com/mailchimp/APIv3-examples as my starting point for this gem. Thanks to
the Mailchimp developers for the head start.