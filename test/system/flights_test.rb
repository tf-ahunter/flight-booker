require "application_system_test_case"

class FlightsTest < ApplicationSystemTestCase
  setup do
    @flight = flights(:one)
  end

  test "visiting the index" do
    visit flights_url
    assert_selector "h1", text: "Flights"
  end

  test "should create flight" do
    visit flights_url
    click_on "New flight"

    fill_in "Arr airport", with: @flight.arr_airport
    fill_in "Dep airport", with: @flight.dep_airport
    fill_in "Dep time", with: @flight.dep_time
    fill_in "Duration", with: @flight.duration
    click_on "Create Flight"

    assert_text "Flight was successfully created"
    click_on "Back"
  end

  test "should update Flight" do
    visit flight_url(@flight)
    click_on "Edit this flight", match: :first

    fill_in "Arr airport", with: @flight.arr_airport
    fill_in "Dep airport", with: @flight.dep_airport
    fill_in "Dep time", with: @flight.dep_time
    fill_in "Duration", with: @flight.duration
    click_on "Update Flight"

    assert_text "Flight was successfully updated"
    click_on "Back"
  end

  test "should destroy Flight" do
    visit flight_url(@flight)
    click_on "Destroy this flight", match: :first

    assert_text "Flight was successfully destroyed"
  end
end
