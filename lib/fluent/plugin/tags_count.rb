require 'fluent/filter'
require 'fluent/parser'

module Fluent
  class TagsCount < Filter
    Fluent::Plugin.register_filter('tags_count', self)

    config_param :tags_count, :integer, default: 500

    def configure(conf)
      super

      @tags_count ||= 600

      unless @tags_count > 0
        raise ConfigError, "fluent-plugin-tags_count: 'tags_count' parameter must be greater than zero"
      end
    end

    def filter(tag, time, record)
      record.count > @tags_count ? nil : record
    end

    private
  end
end
