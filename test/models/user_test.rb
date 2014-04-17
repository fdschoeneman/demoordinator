require 'test_helper'

describe User do

  setup { @user = FactoryGirl.create(:user) }

  describe "db" do

    describe "columns and types" do

      it { User.columns_hash['email'].type.must_equal :string }
      it { User.columns_hash['encrypted_password'].type.must_equal :string }
      it { User.columns_hash['reset_password_token'].type.must_equal :string }
      it { User.columns_hash['reset_password_sent_at'].type.must_equal :datetime }
      it { User.columns_hash['remember_created_at'].type.must_equal :datetime }
      it { User.columns_hash['sign_in_count'].type.must_equal :integer }
      it { User.columns_hash['current_sign_in_at'].type.must_equal :datetime }
      it { User.columns_hash['last_sign_in_at'].type.must_equal :datetime }
      it { User.columns_hash['last_sign_in_ip'].type.must_equal :string }
      it { User.columns_hash['last_sign_in_at'].type.must_equal :datetime }
      it { User.columns_hash['name'].type.must_equal :string }
      it { User.columns_hash['confirmation_token'].type.must_equal :string }
      it { User.columns_hash['confirmed_at'].type.must_equal :datetime }
      it { User.columns_hash['confirmation_sent_at'].type.must_equal :datetime }
      it { User.columns_hash['unconfirmed_email'].type.must_equal :string }
      it { User.columns_hash['role'].type.must_equal :integer }
      it { User.columns_hash['invitation_token'].type.must_equal :string }
      it { User.columns_hash['invitation_created_at'].type.must_equal :datetime }
      it { User.columns_hash['invitation_accepted_at'].type.must_equal :datetime }
      it { User.columns_hash['invitation_limit'].type.must_equal :integer }
      it { User.columns_hash['invited_by_id'].type.must_equal :integer }
      it { User.columns_hash['invited_by_type'].type.must_equal :string }
      it { User.columns_hash['invitations_count'].type.must_equal :integer }
    end
  end

  describe "associations" do

    it { User.reflections[:orgs_users].macro.must_equal :has_many }
    it { User.reflections[:orgs].macro.must_equal :has_many }
    it { User.reflections[:orgs].options[:through].must_equal :orgs_users }
  end
end
