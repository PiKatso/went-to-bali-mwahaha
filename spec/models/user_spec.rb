require 'rails_helper'

describe User do
 it { should have_secure_password }
 it { should have_many :orders }
end
