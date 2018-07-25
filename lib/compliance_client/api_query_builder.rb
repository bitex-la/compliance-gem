module ComplianceClient
  class ApiQueryBuilder < JsonApiClient::Query::Builder
    attr_reader :klass
    delegate :key_formatter, to: :klass

    def initialize(klass)
      @klass = klass
      @primary_key = nil
      @pagination_params = {}
      @path_params = {}
      @additional_params = {}
      @filters = {}
      @includes = []
      @orders = []
      @fields = []
    end

    def find(args = {})
      case args
      when Hash
        where(args)
        klass.requestor.get(params)
      else
        @primary_key = args
        klass.requestor.get(params).first
      end
    end
  end
end
