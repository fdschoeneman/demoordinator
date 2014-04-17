require 'test_helper'

describe OrgsUser do

  describe "columns and types" do

    it { OrgsUser.columns_hash['org_id'].type.must_equal :integer }
  end

  describe "associations" do

    it { OrgsUser.reflections[:org].macro.must_equal :belongs_to }
    it { OrgsUser.reflections[:user].macro.must_equal :belongs_to }
  end
end
