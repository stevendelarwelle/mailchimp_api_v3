require 'yaml'
require 'restclient'
require 'mailchimp/base'
require 'mailchimp/account'
require 'mailchimp/list'

module Mailchimp
  class Client
    def account
      singleton Account
    end

    def lists
      collection List
    end

    private

    def initialize(api_key = nil)
      @api_key = api_key || ENV['MAILCHIMP_API_KEY']
      fail 'Invalid API Key' unless api_key_valid?
    end

    def api_key_valid?
      @api_key =~ /\w+-\w{3}/
    end

    def dc
      @dc ||= @api_key.split('-')[1]
    end

    def auth
      @auth ||= { Authorization: "apikey #{@api_key}" }
    end

    def url
      @url ||= "https://#{dc}.api.mailchimp.com/3.0"
    end

    def get(path)
      YAML.load RestClient.get("#{url}/#{path}", auth)
    end

    def collection(klass)
      response(klass)[klass::KEY].map { |i| klass.new i }
    end

    def singleton(klass)
      klass.new response(klass)
    end

    def response(klass)
      get klass::KEY
    end
  end
end