require "highcarb"
require "logger"
require "highcarb/services"

command = {
  options: {
    "ws-port" => 9091,
    "http-port" => 80,
  },
  args: ["."],
}

#auth = ['user', 'password']

logger = Logger.new(nil)

def command.method_missing(name, *_)
  self[name]
end

Highcarb::Services.start!(command, logger, auth)
