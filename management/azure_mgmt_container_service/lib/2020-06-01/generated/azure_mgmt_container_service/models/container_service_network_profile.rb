# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_06_01
  module Models
    #
    # Profile of network configuration.
    #
    class ContainerServiceNetworkProfile

      include MsRestAzure

      # @return [NetworkPlugin] Network plugin used for building Kubernetes
      # network. Possible values include: 'azure', 'kubenet'. Default value:
      # 'kubenet' .
      attr_accessor :network_plugin

      # @return [NetworkPolicy] Network policy used for building Kubernetes
      # network. Possible values include: 'calico', 'azure'
      attr_accessor :network_policy

      # @return [NetworkMode] Network mode used for building Kubernetes
      # network. Possible values include: 'transparent', 'bridge'
      attr_accessor :network_mode

      # @return [String] A CIDR notation IP range from which to assign pod IPs
      # when kubenet is used. Default value: '10.244.0.0/16' .
      attr_accessor :pod_cidr

      # @return [String] A CIDR notation IP range from which to assign service
      # cluster IPs. It must not overlap with any Subnet IP ranges. Default
      # value: '10.0.0.0/16' .
      attr_accessor :service_cidr

      # @return [String] An IP address assigned to the Kubernetes DNS service.
      # It must be within the Kubernetes service address range specified in
      # serviceCidr. Default value: '10.0.0.10' .
      attr_accessor :dns_service_ip

      # @return [String] A CIDR notation IP range assigned to the Docker bridge
      # network. It must not overlap with any Subnet IP ranges or the
      # Kubernetes service address range. Default value: '172.17.0.1/16' .
      attr_accessor :docker_bridge_cidr

      # @return [OutboundType] The outbound (egress) routing method. Possible
      # values include: 'loadBalancer', 'userDefinedRouting'. Default value:
      # 'loadBalancer' .
      attr_accessor :outbound_type

      # @return [LoadBalancerSku] The load balancer sku for the managed
      # cluster. Possible values include: 'standard', 'basic'
      attr_accessor :load_balancer_sku

      # @return [ManagedClusterLoadBalancerProfile] Profile of the cluster load
      # balancer.
      attr_accessor :load_balancer_profile


      #
      # Mapper for ContainerServiceNetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerServiceNetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceNetworkProfile',
            model_properties: {
              network_plugin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkPlugin',
                default_value: 'kubenet',
                type: {
                  name: 'String'
                }
              },
              network_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkPolicy',
                type: {
                  name: 'String'
                }
              },
              network_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkMode',
                type: {
                  name: 'String'
                }
              },
              pod_cidr: {
                client_side_validation: true,
                required: false,
                serialized_name: 'podCidr',
                default_value: '10.244.0.0/16',
                constraints: {
                  Pattern: '^([0-9]{1,3}\.){3}[0-9]{1,3}(\/([0-9]|[1-2][0-9]|3[0-2]))?$'
                },
                type: {
                  name: 'String'
                }
              },
              service_cidr: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceCidr',
                default_value: '10.0.0.0/16',
                constraints: {
                  Pattern: '^([0-9]{1,3}\.){3}[0-9]{1,3}(\/([0-9]|[1-2][0-9]|3[0-2]))?$'
                },
                type: {
                  name: 'String'
                }
              },
              dns_service_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dnsServiceIP',
                default_value: '10.0.0.10',
                constraints: {
                  Pattern: '^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$'
                },
                type: {
                  name: 'String'
                }
              },
              docker_bridge_cidr: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dockerBridgeCidr',
                default_value: '172.17.0.1/16',
                constraints: {
                  Pattern: '^([0-9]{1,3}\.){3}[0-9]{1,3}(\/([0-9]|[1-2][0-9]|3[0-2]))?$'
                },
                type: {
                  name: 'String'
                }
              },
              outbound_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outboundType',
                default_value: 'loadBalancer',
                type: {
                  name: 'String'
                }
              },
              load_balancer_sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'loadBalancerSku',
                type: {
                  name: 'String'
                }
              },
              load_balancer_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'loadBalancerProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterLoadBalancerProfile'
                }
              }
            }
          }
        }
      end
    end
  end
end