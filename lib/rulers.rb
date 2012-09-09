require "rulers/version"
#for exercise 2
require 'rulers/array'

module Rulers
  # Your code goes here...
  class Application
    def call(env)
     #for exercise 1
     # `echo debug > debug.txt`
      puts [1, 2].sum
      [200, {'Content-Type' => 'text/html'}, ["Hello from Ruby on Rulers!"]]
    end
  end
end
