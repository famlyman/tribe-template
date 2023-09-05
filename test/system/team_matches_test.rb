require "application_system_test_case"

class TeamMatchesTest < ApplicationSystemTestCase
  setup do
    @team_match = team_matches(:one)
  end

  test "visiting the index" do
    visit team_matches_url
    assert_selector "h1", text: "Team matches"
  end

  test "should create team match" do
    visit team_matches_url
    click_on "New team match"

    fill_in "Away team", with: @team_match.away_team_id
    fill_in "Date", with: @team_match.date
    fill_in "Home team", with: @team_match.home_team_id
    click_on "Create Team match"

    assert_text "Team match was successfully created"
    click_on "Back"
  end

  test "should update Team match" do
    visit team_match_url(@team_match)
    click_on "Edit this team match", match: :first

    fill_in "Away team", with: @team_match.away_team_id
    fill_in "Date", with: @team_match.date
    fill_in "Home team", with: @team_match.home_team_id
    click_on "Update Team match"

    assert_text "Team match was successfully updated"
    click_on "Back"
  end

  test "should destroy Team match" do
    visit team_match_url(@team_match)
    click_on "Destroy this team match", match: :first

    assert_text "Team match was successfully destroyed"
  end
end
