# frozen_string_literal: true

require "acts_as_votable"
require "spec_helper"

describe ActsAsVotable::Voter do

  it "should not be a voter" do
    expect(NotVotable).not_to be_votable
  end

  it "should be a voter" do
    expect(Votable).to be_votable
  end

  it_behaves_like "a voter_model" do
    # TODO Replace with factories
    let (:voter) { Voter.create(name: "i can vote!") }
    let (:voter2) { Voter.create(name: "a new person") }
    let (:votable) { Votable.create(name: "a voting model") }
    let (:votable2) { Votable.create(name: "a 2nd voting model") }
  end
end
