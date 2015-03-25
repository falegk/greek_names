# GreekNames

A library for correct appearance Greek names as appropriate.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'greek_names'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install greek_names

## Usage

**vocative(string)**

```ruby
GreekNames.vocative("Αλέξανδρος") # => "Αλέξανδρε"
GreekNames.vocative("Γιώργος") # => "Γιώργο"
GreekNames.vocative("Αντώνης") # => "Αντώνη"
GreekNames.vocative("Δήμητρα") # => "Δήμητρα"
GreekNames.vocative("Παππαδόπουλος") # => "Παππαδόπουλε"
```
