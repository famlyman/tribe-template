require "application_system_test_case"

class PlayerScoresTest < ApplicationSystemTestCase
  setup do
    @player_score = player_scores(:one)
  end

  test "visiting the index" do
    visit player_scores_url
    assert_selector "h1", text: "Player scores"
  end

  test "should create player score" do
    visit player_scores_url
    click_on "New player score"

    fill_in "Player", with: @player_score.player_id
    fill_in "Score", with: @player_score.score
    fill_in "Team match", with: @player_score.team_match_id
    click_on "Create Player score"

    assert_text "Player score was successfully created"
    click_on "Back"
  end

  test "should update Player score" do
    visit player_score_url(@player_score)
    click_on "Edit this player score", match: :first

    fill_in "Player", with: @player_score.player_id
    fill_in "Score", with: @player_score.score
    fill_in "Team match", with: @player_score.team_match_id
    click_on "Update Player score"

    assert_text "Player score was successfully updated"
    click_on "Back"
  end

  test "should destroy Player score" do
    visit player_score_url(@player_score)
    click_on "Destroy this player score", match: :first

    assert_text "Player score was successfully destroyed"
  end
end
