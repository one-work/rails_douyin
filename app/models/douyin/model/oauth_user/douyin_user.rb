module Douyin
  module Model::OauthUser::DouyinUser
    extend ActiveSupport::Concern

    included do
      belongs_to :app, foreign_key: :appid, primary_key: :appid, optional: true

      before_validation :sync_from_app, if: -> { appid.present? && appid_changed? }
    end

    def sync_from_app
      if app
        self.organ_id = app.organ_id
        self.app_name = app.name
      end
    end

  end
end
