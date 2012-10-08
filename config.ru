require "highcarb"
require "logger"
require "highcarb/services"

command = {
  options: {
    "ws-port" => 9091,
    "http-port" => 9090,
  },
  args: ["."],
}

#auth = ['user', 'password']
auth = nil

logger = Logger.new(nil)

def command.method_missing(name, *_)
  self[name]
end

HighCarb::Services.start!(command, logger, auth)
