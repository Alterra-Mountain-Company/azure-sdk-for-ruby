# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  #
  # Peering Client
  #
  class PeeringServicePrefixes
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PeeringServicePrefixes class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [PeeringClient] reference to the PeeringClient
    attr_reader :client

    #
    # Gets the peering service prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeeringServicePrefix] operation results.
    #
    def get(resource_group_name, peering_service_name, prefix_name, custom_headers:nil)
      response = get_async(resource_group_name, peering_service_name, prefix_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the peering service prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, peering_service_name, prefix_name, custom_headers:nil)
      get_async(resource_group_name, peering_service_name, prefix_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the peering service prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, peering_service_name, prefix_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'peering_service_name is nil' if peering_service_name.nil?
      fail ArgumentError, 'prefix_name is nil' if prefix_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peeringServices/{peeringServiceName}/prefixes/{prefixName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'peeringServiceName' => peering_service_name,'prefixName' => prefix_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServicePrefix.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates or updates the peering prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name
    # @param peering_service_prefix [PeeringServicePrefix] The IP prefix for an
    # peering
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PeeringServicePrefix] operation results.
    #
    def create_or_update(resource_group_name, peering_service_name, prefix_name, peering_service_prefix, custom_headers:nil)
      response = create_or_update_async(resource_group_name, peering_service_name, prefix_name, peering_service_prefix, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates the peering prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name
    # @param peering_service_prefix [PeeringServicePrefix] The IP prefix for an
    # peering
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, peering_service_name, prefix_name, peering_service_prefix, custom_headers:nil)
      create_or_update_async(resource_group_name, peering_service_name, prefix_name, peering_service_prefix, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates the peering prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name
    # @param peering_service_prefix [PeeringServicePrefix] The IP prefix for an
    # peering
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, peering_service_name, prefix_name, peering_service_prefix, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'peering_service_name is nil' if peering_service_name.nil?
      fail ArgumentError, 'prefix_name is nil' if prefix_name.nil?
      fail ArgumentError, 'peering_service_prefix is nil' if peering_service_prefix.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServicePrefix.mapper()
      request_content = @client.serialize(request_mapper,  peering_service_prefix)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peeringServices/{peeringServiceName}/prefixes/{prefixName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'peeringServiceName' => peering_service_name,'prefixName' => prefix_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServicePrefix.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Peering::Mgmt::V2019_08_01_preview::Models::PeeringServicePrefix.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # removes the peering prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, peering_service_name, prefix_name, custom_headers:nil)
      response = delete_async(resource_group_name, peering_service_name, prefix_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # removes the peering prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, peering_service_name, prefix_name, custom_headers:nil)
      delete_async(resource_group_name, peering_service_name, prefix_name, custom_headers:custom_headers).value!
    end

    #
    # removes the peering prefix.
    #
    # @param resource_group_name [String] The resource group name.
    # @param peering_service_name [String] The peering service name.
    # @param prefix_name [String] The prefix name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, peering_service_name, prefix_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'peering_service_name is nil' if peering_service_name.nil?
      fail ArgumentError, 'prefix_name is nil' if prefix_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peeringServices/{peeringServiceName}/prefixes/{prefixName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'peeringServiceName' => peering_service_name,'prefixName' => prefix_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end