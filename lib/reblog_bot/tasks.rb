# -*- coding: utf-8 -*-

module ReblogBot
  module Tasks
    class << self
      def tasks
        @_tasks ||= {}
      end

      def add_task(name, filter)
        tasks[name] = filter
      end
    end

    Dir[File.dirname(__FILE__) + '/tasks/*.rb'].each {|f| require f}
  end
end
