require "train-awsssm/connection"

module TrainPlugins
  module <%= name.split('-').last.capitalize %>
    class Transport < Train.plugin(1)
      name "<%= name.split('-').last %>"

      option :host, required: true
      # option :my_option, default: nil

      def connection(_instance_opts = nil)
        @connection ||= TrainPlugins::<%= name.split('-').last.capitalize %>::Connection.new(@options)
      end
    end
  end
end
