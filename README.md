# TimelinerRails

timeliner_rails packages the []() jquery plugin (javascripts, stylesheets and images) for use with the rails 3.1+ asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'timeliner_rails'


## Usage

Add this line to your `application.js`:

```javascript
//= require timeliner.timeliner
```

Add these lines to your `application.scss` || `application.css`:

```css
*= require timeliner/screen
*= require timeliner/responsive
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
