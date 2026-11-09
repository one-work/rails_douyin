module Douyin
  class AppApi < BaseApi
    include Token
    include GoodLife
    include Program::Base

  end
end
