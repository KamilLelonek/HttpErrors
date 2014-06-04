# HttpErrors

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'http_errors'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install http_errors

## Usage

You can use in your controller:

    rescue_from HTTPError do |exception|
      head exception.class.head
    end

and use it anywhere as:

	raise HTTPErrors::Unauthorized unless …

Available errors `ErrorName(error_code, error_status)`:

	Unauthorized	(401, :unauthorized)
	Forbidden		(403, :forbidden)
	NotFound		(404, :not_found)
	NotAcceptable	(406, :not_acceptable)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/http_errors/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
