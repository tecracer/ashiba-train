module TrainPlugins
  module <%= name.split('-').last.capitalize %>
    VERSION = "<%= version %>".freeze
  end
end
