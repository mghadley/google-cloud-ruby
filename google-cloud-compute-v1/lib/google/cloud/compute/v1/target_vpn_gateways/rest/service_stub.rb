# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/compute/v1/compute_pb"

module Google
  module Cloud
    module Compute
      module V1
        module TargetVpnGateways
          module Rest
            ##
            # REST service stub for the TargetVpnGateways service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              def initialize endpoint:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials
              end

              ##
              # Baseline implementation for the aggregated_list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListTargetVpnGatewaysRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::TargetVpnGatewayAggregatedList]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::TargetVpnGatewayAggregatedList]
              #   A result object deserialized from the server's reply
              def aggregated_list request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_aggregated_list_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::TargetVpnGatewayAggregatedList.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def delete request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_delete_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::TargetVpnGateway]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::TargetVpnGateway]
              #   A result object deserialized from the server's reply
              def get request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_get_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::TargetVpnGateway.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def insert request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_insert_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListTargetVpnGatewaysRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::TargetVpnGatewayList]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::TargetVpnGatewayList]
              #   A result object deserialized from the server's reply
              def list request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_list_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::TargetVpnGatewayList.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # Baseline implementation for the set_labels REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetLabelsTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def set_labels request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = transcode_set_labels_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end


              private

              ##
              # @private
              #
              # GRPC transcoding helper method for the aggregated_list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListTargetVpnGatewaysRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_aggregated_list_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/aggregated/targetVpnGateways",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :delete,
                                                          uri_template: "/compute/v1/projects/{project}/regions/{region}/targetVpnGateways/{target_vpn_gateway}",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false],
                                                            ["target_vpn_gateway", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/regions/{region}/targetVpnGateways/{target_vpn_gateway}",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false],
                                                            ["target_vpn_gateway", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_insert_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/regions/{region}/targetVpnGateways",
                                                          body: "target_vpn_gateway_resource",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListTargetVpnGatewaysRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/regions/{region}/targetVpnGateways",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the set_labels REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetLabelsTargetVpnGatewayRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_labels_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/regions/{region}/targetVpnGateways/{resource}/setLabels",
                                                          body: "region_set_labels_request_resource",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["region", %r{^[^/]+/?$}, false],
                                                            ["resource", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end
