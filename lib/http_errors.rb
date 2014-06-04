require 'http_errors/version'

module HttpErrors
  # Base class for generating particular auth errors
  class HTTPError < StandardError
    class << self
      attr_accessor :status
      attr_accessor :head
    end
  end

  # Unauthorized error raised when request comes from unknown source or user
  Unauthorized      = Class.new(HTTPError) do
    self.status = 401
    self.head   = :unauthorized
  end

  # Forbidden error raised when user doesn't have access to requested resources
  Forbidden         = Class.new(HTTPError) do
    self.status = 403
    self.head   = :forbidden
  end

  # NotAcceptable error raised when users provided not acceptable data
  NotAcceptable     = Class.new(HTTPError) do
    self.status = 406
    self.head   = :not_acceptable
  end

  # NotAcceptable error raised when users provided not acceptable data
  NotFound         = Class.new(HTTPError) do
    self.status = 404
    self.head   = :not_found
  end
end
