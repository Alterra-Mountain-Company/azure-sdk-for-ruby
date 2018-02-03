# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  #
  # Stream Analytics Client
  #
  class Subscriptions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Subscriptions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StreamAnalyticsManagementClient] reference to the StreamAnalyticsManagementClient
    attr_reader :client

    #
    # Retrieves the subscription's current quota information in a particular
    # region.
    #
    # @param location [String] The region in which to retrieve the subscription's
    # quota information. You can find out which regions Azure Stream Analytics is
    # supported in here: https://azure.microsoft.com/en-us/regions/
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SubscriptionQuotasListResult] operation results.
    #
    def list_quotas(location, custom_headers:nil)
      response = list_quotas_async(location, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves the subscription's current quota information in a particular
    # region.
    #
    # @param location [String] The region in which to retrieve the subscription's
    # quota information. You can find out which regions Azure Stream Analytics is
    # supported in here: https://azure.microsoft.com/en-us/regions/
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_quotas_with_http_info(location, custom_headers:nil)
      list_quotas_async(location, custom_headers:custom_headers).value!
    end

    #
    # Retrieves the subscription's current quota information in a particular
    # region.
    #
    # @param location [String] The region in which to retrieve the subscription's
    # quota information. You can find out which regions Azure Stream Analytics is
    # supported in here: https://azure.microsoft.com/en-us/regions/
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_quotas_async(location, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.StreamAnalytics/locations/{location}/quotas'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuotasListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
