require "rulers/version"
#for exercise 2
require 'rulers/array'
require 'rulers/routing'

module Rulers
  # Your code goes here...
  class Application
    def call(env)
      controller, action = get_controller_and_action(env)
      controller = controller.new(env)
      response_body = controller.send(action)
      [200, {'Content-Type' => 'text/html'}, [response_body]]
    end
  end

  class Controller
    attr_reader :env
    def initialize(env)
      @env = env
    end
  end
end

