# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Triggered Web Job Information.
    #
    class TriggeredWebJob < ProxyOnlyResource

      include MsRestAzure

      # @return [TriggeredJobRun] Latest job run information.
      attr_accessor :latest_run

      # @return [String] History URL.
      attr_accessor :history_url

      # @return [String] Scheduler Logs URL.
      attr_accessor :scheduler_logs_url

      # @return [String] Run command.
      attr_accessor :run_command

      # @return [String] Job URL.
      attr_accessor :url

      # @return [String] Extra Info URL.
      attr_accessor :extra_info_url

      # @return [WebJobType] Job type. Possible values include: 'Continuous',
      # 'Triggered'
      attr_accessor :web_job_type

      # @return [String] Error information.
      attr_accessor :error

      # @return [Boolean] Using SDK?
      attr_accessor :using_sdk

      # @return Job settings.
      attr_accessor :settings


      #
      # Mapper for TriggeredWebJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TriggeredWebJob',
          type: {
            name: 'Composite',
            class_name: 'TriggeredWebJob',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              latest_run: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.latest_run',
                type: {
                  name: 'Composite',
                  class_name: 'TriggeredJobRun'
                }
              },
              history_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.history_url',
                type: {
                  name: 'String'
                }
              },
              scheduler_logs_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scheduler_logs_url',
                type: {
                  name: 'String'
                }
              },
              run_command: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.run_command',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.url',
                type: {
                  name: 'String'
                }
              },
              extra_info_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.extra_info_url',
                type: {
                  name: 'String'
                }
              },
              web_job_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.web_job_type',
                type: {
                  name: 'Enum',
                  module: 'WebJobType'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.error',
                type: {
                  name: 'String'
                }
              },
              using_sdk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.using_sdk',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end