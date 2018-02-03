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
  class ListManagementImage
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ListManagementImage class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContentModeratorClient] reference to the ContentModeratorClient
    attr_reader :client

    #
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Image] operation results.
    #
    def add_image(list_id, tag:nil, label:nil, custom_headers:nil)
      response = add_image_async(list_id, tag:tag, label:label, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_image_with_http_info(list_id, tag:nil, label:nil, custom_headers:nil)
      add_image_async(list_id, tag:tag, label:label, custom_headers:custom_headers).value!
    end

    #
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_image_async(list_id, tag:nil, label:nil, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/imagelists/{listId}/images'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
          query_params: {'tag' => tag,'label' => label},
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
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::Image.mapper()
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
    # Deletes all images from the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [String] operation results.
    #
    def delete_all_images(list_id, custom_headers:nil)
      response = delete_all_images_async(list_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes all images from the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_all_images_with_http_info(list_id, custom_headers:nil)
      delete_all_images_async(list_id, custom_headers:custom_headers).value!
    end

    #
    # Deletes all images from the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_all_images_async(list_id, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/imagelists/{listId}/images'

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
    # Gets all image Ids from the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ImageIds] operation results.
    #
    def get_all_image_ids(list_id, custom_headers:nil)
      response = get_all_image_ids_async(list_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all image Ids from the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_all_image_ids_with_http_info(list_id, custom_headers:nil)
      get_all_image_ids_async(list_id, custom_headers:custom_headers).value!
    end

    #
    # Gets all image Ids from the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_all_image_ids_async(list_id, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/imagelists/{listId}/images'

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
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageIds.mapper()
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
    # Deletes an image from the list with list Id and image Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param image_id [String] Id of the image.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [String] operation results.
    #
    def delete_image(list_id, image_id, custom_headers:nil)
      response = delete_image_async(list_id, image_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes an image from the list with list Id and image Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param image_id [String] Id of the image.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_image_with_http_info(list_id, image_id, custom_headers:nil)
      delete_image_async(list_id, image_id, custom_headers:custom_headers).value!
    end

    #
    # Deletes an image from the list with list Id and image Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param image_id [String] Id of the image.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_image_async(list_id, image_id, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'image_id is nil' if image_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'contentmoderator/lists/v1.0/imagelists/{listId}/images/{ImageId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id,'ImageId' => image_id},
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
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param content_type [String] The content type.
    # @param image_url [ImageUrl] The image url.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Image] operation results.
    #
    def add_image_url_input(list_id, content_type, image_url, tag:nil, label:nil, custom_headers:nil)
      response = add_image_url_input_async(list_id, content_type, image_url, tag:tag, label:label, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param content_type [String] The content type.
    # @param image_url [ImageUrl] The image url.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_image_url_input_with_http_info(list_id, content_type, image_url, tag:nil, label:nil, custom_headers:nil)
      add_image_url_input_async(list_id, content_type, image_url, tag:tag, label:label, custom_headers:custom_headers).value!
    end

    #
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param content_type [String] The content type.
    # @param image_url [ImageUrl] The image url.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_image_url_input_async(list_id, content_type, image_url, tag:nil, label:nil, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'content_type is nil' if content_type.nil?
      fail ArgumentError, 'image_url is nil' if image_url.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Content-Type'] = content_type unless content_type.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl.mapper()
      request_content = @client.serialize(request_mapper,  image_url)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'contentmoderator/lists/v1.0/imagelists/{listId}/images'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
          query_params: {'tag' => tag,'label' => label},
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
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::Image.mapper()
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
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param image_stream The image file.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Image] operation results.
    #
    def add_image_file_input(list_id, image_stream, tag:nil, label:nil, custom_headers:nil)
      response = add_image_file_input_async(list_id, image_stream, tag:tag, label:label, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param image_stream The image file.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_image_file_input_with_http_info(list_id, image_stream, tag:nil, label:nil, custom_headers:nil)
      add_image_file_input_async(list_id, image_stream, tag:tag, label:label, custom_headers:custom_headers).value!
    end

    #
    # Add an image to the list with list Id equal to list Id passed.
    #
    # @param list_id [String] List Id of the image list.
    # @param image_stream The image file.
    # @param tag [Integer] Tag for the image.
    # @param label [String] The image label.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_image_file_input_async(list_id, image_stream, tag:nil, label:nil, custom_headers:nil)
      fail ArgumentError, '@client.base_url is nil' if @client.base_url.nil?
      fail ArgumentError, 'list_id is nil' if list_id.nil?
      fail ArgumentError, 'image_stream is nil' if image_stream.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'image/gif'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = {
        client_side_validation: true,
        required: true,
        serialized_name: 'ImageStream',
        type: {
          name: 'Stream'
        }
      }
      request_content = @client.serialize(request_mapper,  image_stream)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'contentmoderator/lists/v1.0/imagelists/{listId}/images'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{baseUrl}', @client.base_url)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'listId' => list_id},
          query_params: {'tag' => tag,'label' => label},
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
            result_mapper = Azure::CognitiveServices::ContentModerator::V1_0::Models::Image.mapper()
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
