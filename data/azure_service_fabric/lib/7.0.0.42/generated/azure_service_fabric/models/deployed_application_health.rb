# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about the health of an application deployed on a Service
    # Fabric node.
    #
    class DeployedApplicationHealth < EntityHealth

      include MsRestAzure

      # @return [String] Name of the application deployed on the node whose
      # health information is described by this object.
      attr_accessor :name

      # @return [String] Name of the node where this application is deployed.
      attr_accessor :node_name

      # @return [Array<DeployedServicePackageHealthState>] Deployed service
      # package health states for the current deployed application as found in
      # the health store.
      attr_accessor :deployed_service_package_health_states


      #
      # Mapper for DeployedApplicationHealth class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeployedApplicationHealth',
          type: {
            name: 'Composite',
            class_name: 'DeployedApplicationHealth',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              health_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthEvents',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvent'
                      }
                  }
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
                      }
                  }
                }
              },
              health_statistics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthStatistics',
                type: {
                  name: 'Composite',
                  class_name: 'HealthStatistics'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              deployed_service_package_health_states: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DeployedServicePackageHealthStates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeployedServicePackageHealthStateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeployedServicePackageHealthState'
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