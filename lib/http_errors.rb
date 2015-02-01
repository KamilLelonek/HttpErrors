require 'http_errors/version'

module HttpErrors
  # Base class for generating particular auth errors
  class HTTPError < StandardError
    class << self
      attr_accessor :status
      attr_accessor :head
    end

    def initialize(message = nil)
      super
    end
  end

  # Unauthorized error raised when request comes from unknown source or user
  Unauthorized = Class.new(HTTPError) do
    self.status = 401
    self.head   = :unauthorized
  end

  # Forbidden error raised when user doesn't have access to requested resources
  Forbidden = Class.new(HTTPError) do
    self.status = 403
    self.head   = :forbidden
  end

  # NotFound error raised when requested data was not found in resources
  NotFound = Class.new(HTTPError) do
    self.status = 404
    self.head   = :not_found
  end

  # NotAcceptable error raised when client doesn't accept data format
  NotAcceptable = Class.new(HTTPError) do
    self.status = 406
    self.head   = :not_acceptable
  end

  # UnprocessableEntity error raised when users provided invalid data
  UnprocessableEntity = Class.new(HTTPError) do
    self.status = 422
    self.head   = :unprocessable_entity
  end
end
