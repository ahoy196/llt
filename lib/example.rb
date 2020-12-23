# frozen_string_literal: true

module Example
  module CMD
    class Cmd
      attr_accessor :string, :registry

      def _process
        response = system('ls -l')
        puts response
      end
    end

    class Response
      attr_accessor :string, :registry
    end
  end
end

cmd = Example::CMD::Cmd.new
cmd.string = 'ls'
response = Example::CMD::Response.new
response.string = 'response'

puts cmd
puts response
