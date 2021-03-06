# Rsyc [![Build Status](https://travis-ci.org/bsm/rsyc.png?branch=master)](https://travis-ci.org/bsm/rsyc) [![Coverage Status](https://coveralls.io/repos/bsm/rsyc/badge.png?branch=master)](https://coveralls.io/r/bsm/rsyc?branch=master)

Simplest-possible Rails application configuration accessor.

## Usage

Include it in your Gemfile:

```ruby
gem "rsyc"
```

Create a config/app.yml with your configuration:

```yaml
development:
  redis: "http://localhost:6379"
  nested:
    user: me
    pass: secret

production:
  redis: "http://remote.service:27841"
  nested:
    user: real
    pass: s3cret
```

Use in in your Rails app:

```ruby
Rails.application.config.app.redis       # => "http://localhost:6379"
Rails.application.config.app[:redis]     # => "http://localhost:6379"
Rails.application.config.app.nested.pass # => "secret"
```

## Licence

```
Copyright (c) 2014 Black Square Media

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
