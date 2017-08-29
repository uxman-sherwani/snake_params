module SnakyParams
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      # Transforming request
      request = Rack::Request.new(env)
      
      request.GET.deep_transform_keys!(&:underscore)
      request.POST.deep_transform_keys!(&:underscore)

      @app.call(env)
    end
  end
end