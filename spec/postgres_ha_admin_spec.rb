require "spec_helper"

RSpec.describe PostgresHaAdmin do
  it "has a version number" do
    expect(PostgresHaAdmin::VERSION).not_to be nil
  end
end
