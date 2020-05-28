require "train"

module TrainPlugins
  module <%= name.split('-').last.capitalize %>
    class Connection < Train::Plugins::Transport::BaseConnection
      def initialize(options)
        super(options)

        # ...
      end

      def close
        logger.info format("[<%= name.split('-').last.capitalize %>] Closed connection")
      end

      def uri
        "<%= name.split('-').last %>://#{@options[:host]}/"
      end

      def run_command_via_connection(cmd, &data_handler)
        logger.debug format("[<%= name.split('-').last.capitalize %>] Sending command to %s", @options[:host])
        exit_status, stdout, stderr = execute_on_channel(cmd, &data_handler)

        CommandResult.new(stdout, stderr, exit_status)
      end

      def execute_on_channel(cmd, &data_handler)
        logger.debug format("[<%= name.split('-').last.capitalize %>] Command: '%s'", cmd)

        # result = ...

        stdout = result.standard_output_content || ""
        stderr = result.standard_error_content || ""
        exit_status = result.response_code

        [exit_status, stdout, stderr]
      end

      private

      # ...
    end
  end
end
