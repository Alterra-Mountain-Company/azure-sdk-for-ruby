# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2018-09-01-preview/generated/azure_mgmt_attestation/module_definition'
require 'ms_rest_azure'

module Azure::Attestation::Mgmt::V2018_09_01_preview
  autoload :Operations,                                         '2018-09-01-preview/generated/azure_mgmt_attestation/operations.rb'
  autoload :AttestationProviders,                               '2018-09-01-preview/generated/azure_mgmt_attestation/attestation_providers.rb'
  autoload :AttestationManagementClient,                        '2018-09-01-preview/generated/azure_mgmt_attestation/attestation_management_client.rb'

  module Models
    autoload :AttestationProviderListResult,                      '2018-09-01-preview/generated/azure_mgmt_attestation/models/attestation_provider_list_result.rb'
    autoload :OperationsDefinition,                               '2018-09-01-preview/generated/azure_mgmt_attestation/models/operations_definition.rb'
    autoload :AttestationServiceCreationParams,                   '2018-09-01-preview/generated/azure_mgmt_attestation/models/attestation_service_creation_params.rb'
    autoload :OperationsDisplayDefinition,                        '2018-09-01-preview/generated/azure_mgmt_attestation/models/operations_display_definition.rb'
    autoload :OperationList,                                      '2018-09-01-preview/generated/azure_mgmt_attestation/models/operation_list.rb'
    autoload :Resource,                                           '2018-09-01-preview/generated/azure_mgmt_attestation/models/resource.rb'
    autoload :AttestationProvider,                                '2018-09-01-preview/generated/azure_mgmt_attestation/models/attestation_provider.rb'
    autoload :ProxyResource,                                      '2018-09-01-preview/generated/azure_mgmt_attestation/models/proxy_resource.rb'
    autoload :TrackedResource,                                    '2018-09-01-preview/generated/azure_mgmt_attestation/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2018-09-01-preview/generated/azure_mgmt_attestation/models/azure_entity_resource.rb'
    autoload :AttestationServiceStatus,                           '2018-09-01-preview/generated/azure_mgmt_attestation/models/attestation_service_status.rb'
  end
end