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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/v2/conversation_pb"
require "google/cloud/dialogflow/v2/conversation_services_pb"
require "google/cloud/dialogflow/v2/conversations"

class ::Google::Cloud::Dialogflow::V2::Conversations::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_conversation
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Conversation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    conversation = {}
    conversation_id = "hello world"

    create_conversation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_conversation, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CreateConversationRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::Conversation), request["conversation"]
      assert_equal "hello world", request["conversation_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_conversation_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_conversation({ parent: parent, conversation: conversation, conversation_id: conversation_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_conversation parent: parent, conversation: conversation, conversation_id: conversation_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_conversation ::Google::Cloud::Dialogflow::V2::CreateConversationRequest.new(parent: parent, conversation: conversation, conversation_id: conversation_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_conversation({ parent: parent, conversation: conversation, conversation_id: conversation_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_conversation(::Google::Cloud::Dialogflow::V2::CreateConversationRequest.new(parent: parent, conversation: conversation, conversation_id: conversation_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_conversation_client_stub.call_rpc_count
    end
  end

  def test_list_conversations
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListConversationsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_conversations_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_conversations, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListConversationsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_conversations_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_conversations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_conversations parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_conversations ::Google::Cloud::Dialogflow::V2::ListConversationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_conversations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_conversations(::Google::Cloud::Dialogflow::V2::ListConversationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_conversations_client_stub.call_rpc_count
    end
  end

  def test_get_conversation
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Conversation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_conversation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_conversation, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GetConversationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_conversation_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_conversation({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_conversation name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_conversation ::Google::Cloud::Dialogflow::V2::GetConversationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_conversation({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_conversation(::Google::Cloud::Dialogflow::V2::GetConversationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_conversation_client_stub.call_rpc_count
    end
  end

  def test_complete_conversation
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Conversation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    complete_conversation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :complete_conversation, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CompleteConversationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, complete_conversation_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.complete_conversation({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.complete_conversation name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.complete_conversation ::Google::Cloud::Dialogflow::V2::CompleteConversationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.complete_conversation({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.complete_conversation(::Google::Cloud::Dialogflow::V2::CompleteConversationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, complete_conversation_client_stub.call_rpc_count
    end
  end

  def test_create_call_matcher
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::CallMatcher.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    call_matcher = {}

    create_call_matcher_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_call_matcher, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CreateCallMatcherRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::CallMatcher), request["call_matcher"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_call_matcher_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_call_matcher({ parent: parent, call_matcher: call_matcher }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_call_matcher parent: parent, call_matcher: call_matcher do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_call_matcher ::Google::Cloud::Dialogflow::V2::CreateCallMatcherRequest.new(parent: parent, call_matcher: call_matcher) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_call_matcher({ parent: parent, call_matcher: call_matcher }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_call_matcher(::Google::Cloud::Dialogflow::V2::CreateCallMatcherRequest.new(parent: parent, call_matcher: call_matcher), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_call_matcher_client_stub.call_rpc_count
    end
  end

  def test_list_call_matchers
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListCallMatchersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_call_matchers_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_call_matchers, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListCallMatchersRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_call_matchers_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_call_matchers({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_call_matchers parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_call_matchers ::Google::Cloud::Dialogflow::V2::ListCallMatchersRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_call_matchers({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_call_matchers(::Google::Cloud::Dialogflow::V2::ListCallMatchersRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_call_matchers_client_stub.call_rpc_count
    end
  end

  def test_delete_call_matcher
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_call_matcher_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_call_matcher, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::DeleteCallMatcherRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_call_matcher_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_call_matcher({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_call_matcher name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_call_matcher ::Google::Cloud::Dialogflow::V2::DeleteCallMatcherRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_call_matcher({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_call_matcher(::Google::Cloud::Dialogflow::V2::DeleteCallMatcherRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_call_matcher_client_stub.call_rpc_count
    end
  end

  def test_list_messages
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListMessagesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_messages_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_messages, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListMessagesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_messages_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_messages({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_messages parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_messages ::Google::Cloud::Dialogflow::V2::ListMessagesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_messages({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_messages(::Google::Cloud::Dialogflow::V2::ListMessagesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_messages_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::Conversations::Client::Configuration, config
  end
end
