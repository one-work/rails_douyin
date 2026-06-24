# frozen_string_literal: true

module Douyin
  class AppApi < BaseApi
    include Token
    include GoodLife
    include Program::Base

  end
end
