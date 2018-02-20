# Focus on TDD with Ruby
[![Maintainability](https://api.codeclimate.com/v1/badges/ee886d2c2e788c602d07/maintainability)](https://codeclimate.com/github/corinneling/wand-shop/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/ee886d2c2e788c602d07/test_coverage)](https://codeclimate.com/github/corinneling/wand-shop/test_coverage)
[![Build Status](https://travis-ci.org/corinneling/wand-shop.svg?branch=master)](https://travis-ci.org/corinneling/wand-shop)

## Wand Repair Shop

While we all know every wizard needs a wand, we don't often think of what happens when something goes wrong and it breaks, or isn't behaving properly.

![Ron](/ollivanders/ronald.gif)

But, you're not! You don't have to worry about puking up slugs, or accidentally blowing things up anymore. Clone this repo and run `rake start`. Then Ollivander will ask you details about your wand, so he can better repair it.

## Project Info

Project: To create a new program similar to hot dog stand, see [original prompt](https://github.com/corinneling/ruby-and-hot-dogs), from the ground up with TDD. I decided to change changed content from hot dogs to wands.

What I've Learned So Far:
* How to test up test coverage with Code Climate, SimpleCov, Travis CI
* Gems have to be added to gem file for test coverage to work, such as rake
* How bundler works
* It's okay to start out simple and then refractor to have cleaner code vs. trying to write beautiful code right off the bat just for the sake of writing beautiful code
* Everything will eventually evolve and change
   * As you add more functionality and refractor, classes and modules will form, methods will be added and disappear, so don't get stuck on keeping something when it's not necessary
