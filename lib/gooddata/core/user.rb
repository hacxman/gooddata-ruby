# encoding: UTF-8
#
# Copyright (c) 2010-2017 GoodData Corporation. All rights reserved.
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree.

require_relative '../models/profile'

module GoodData
  class << self
    # Gets currently logged user
    #
    # @return [GoodData::Profile] User Profile
    def user
      GoodData::Profile.current
    end

    alias_method :profile, :user
  end
end
