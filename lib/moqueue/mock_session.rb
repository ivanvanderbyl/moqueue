module Moqueue

  class MockSession
    def initialize(*args, &block)
      # noop
    end

    def on_tcp_connection_loss(&block)
      # noop
    end

    def on_error(&block)
      #noop
    end
  end
end
