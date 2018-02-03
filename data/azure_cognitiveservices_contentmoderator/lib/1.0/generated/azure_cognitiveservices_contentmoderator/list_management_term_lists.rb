# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  #
  # You use the API to scan your content as it is generated. Content Moderator
  # then processes your content and sends the results along with relevant
  # information either back to your systems or to the built-in review tool. You
  # can use this information to take decisions e.g. take it down, send to human
  # judge, etc.
  #
  # When using the API, images need to have a minimum of 128 pixels and a
  # maximum file size of 4MB.
  # Text can be at most 1024 characters long.
  # If the content passed to the text API or the image API exceeds the size
  # limits, the API will return an error code that informs about the issue.
  #
  # This API is currently available in:
  #
  # * West US - westus.api.cognitive.microsoft.com
  # * East US 2 - eastus2.api.cognitive.microsoft.com
  # * West Central US - westcentralus.api.cognitive.microsoft.com
  # * West Europe - westeurope.api.cognitive.microsoft.com
  # * Southeast Asia - southeastasia.api.cognitive.microsoft.com .
  #
  class ListManagementTermLists
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ListManagementTermLists class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContentModeratorClient] reference to the ContentModeratorClient
    attr_reader :client

    #
    # Returns list Id details of the term list with list Id equal to list Id
    # passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TermList] operation results.
    #
    def get_details(list_id, custom_headers:nil)
      response = get_details_async(list_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns list Id details of the term list with list Id equal to list Id
    # passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_details_with_http_info(list_id, custom_headers:nil)
      get_details_async(list_id, custom_headers:custom_headers).value!
    end

    #
    # Returns list Id details of the term list with list Id equal to list Id
    # passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_details_async(list_id, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/termlists/{listId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList.mapper()
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
    # Deletes term list with the list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [String] operation results.
    #
    def delete(list_id, custom_headers:nil)
      response = delete_async(list_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes term list with the list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(list_id, custom_headers:nil)
      delete_async(list_id, custom_headers:custom_headers).value!
    end

    #
    # Deletes term list with the list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(list_id, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/termlists/{listId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'String'
              }
            }
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
    # Updates an Term List.
    #
    # @param list_id [String] List Id of the image list.
    # @param content_type [String] The content type.
    # @param body [Body] Schema of the body.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TermList] operation results.
    #
    def update(list_id, content_type, body, custom_headers:nil)
      response = update_async(list_id, content_type, body, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates an Term List.
    #
    # @param list_id [String] List Id of the image list.
    # @param content_type [String] The content type.
    # @param body [Body] Schema of the body.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(list_id, content_type, body, custom_headers:nil)
      update_async(list_id, content_type, body, custom_headers:custom_headers).value!
    end

    #
    # Updates an Term List.
    #
    # @param list_id [String] List Id of the image list.
    # @param content_type [String] The content type.
    # @param body [Body] Schema of the body.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(list_id, content_type, body, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'content_type is nil' if content_type.nil?
      fail ArgumentError, 'body is nil' if body.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Content-Type'] = content_type unless content_type.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::Body.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'contentmoderator/lists/v1.0/termlists/{listId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList.mapper()
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
    # Creates a Term List
    #
    # @param content_type [String] The content type.
    # @param body [Body] Schema of the body.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TermList] operation results.
    #
    def create(content_type, body, custom_headers:nil)
      response = create_async(content_type, body, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a Term List
    #
    # @param content_type [String] The content type.
    # @param body [Body] Schema of the body.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(content_type, body, custom_headers:nil)
      create_async(content_type, body, custom_headers:custom_headers).value!
    end

    #
    # Creates a Term List
    #
    # @param content_type [String] The content type.
    # @param body [Body] Schema of the body.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(content_type, body, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'content_type is nil' if content_type.nil?
      fail ArgumentError, 'body is nil' if body.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Content-Type'] = content_type unless content_type.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::Body.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'contentmoderator/lists/v1.0/termlists'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList.mapper()
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
    # gets all the Term Lists
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def get_all_term_lists(custom_headers:nil)
      response = get_all_term_lists_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # gets all the Term Lists
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_all_term_lists_with_http_info(custom_headers:nil)
      get_all_term_lists_async(custom_headers:custom_headers).value!
    end

    #
    # gets all the Term Lists
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_all_term_lists_async(custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/termlists'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'TermListElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'TermList'
                    }
                }
              }
            }
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
    # Refreshes the index of the list with list Id equal to list ID passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RefreshIndex] operation results.
    #
    def refresh_index_method(list_id, language, custom_headers:nil)
      response = refresh_index_method_async(list_id, language, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Refreshes the index of the list with list Id equal to list ID passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def refresh_index_method_with_http_info(list_id, language, custom_headers:nil)
      refresh_index_method_async(list_id, language, custom_headers:custom_headers).value!
    end

    #
    # Refreshes the index of the list with list Id equal to list ID passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param language [String] Language of the terms.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def refresh_index_method_async(list_id, language, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'language is nil' if language.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/termlists/{listId}/RefreshIndex'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
          query_params: {'language' => language},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndex.mapper()
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
