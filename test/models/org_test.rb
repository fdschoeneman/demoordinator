require 'test_helper'

describe Org do

  describe "columns and types" do

    it { Org.columns_hash['name'].type.must_equal :string }
  end

  describe "associations" do

    it { Org.reflections[:orgs_users].macro.must_equal :has_many }
    it { Org.reflections[:users].macro.must_equal :has_many }
    it { Org.reflections[:users].options[:through].must_equal :orgs_users }


  end

end
