module SwiftStorage
  class Configuration
    attr_accessor :auth_version, :tenant, :username, :password, :endpoint, :temp_url_key,
                  :auth_method, :authtenant_type

    def initialize
      @auth_version = ENV['SWIFT_STORAGE_AUTH_VERSION'] || '2.0'
      @tenant = ENV['SWIFT_STORAGE_TENANT']
      @username = ENV['SWIFT_STORAGE_USERNAME']
      @password = ENV['SWIFT_STORAGE_PASSWORD']
      @endpoint = ENV['SWIFT_STORAGE_ENDPOINT']
      @temp_url_key = ENV['SWIFT_STORAGE_TEMP_URL_KEY']

      @auth_method = :password
      @authtenant_type = 'tenantName' # `tenantName` or `tenantId`
    end
  end
end
