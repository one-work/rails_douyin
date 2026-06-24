module Douyin
  class DouyinUser < Auth::OauthUser
    include Model::OauthUser::DouyinUser
  end
end
