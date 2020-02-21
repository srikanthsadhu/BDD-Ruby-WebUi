#@TV_reviews
Feature: Non-logged-in user journeys for Television(TV) reviews of Which? web site.

  Background:
    Given A anonymous user
    When lands on 'TV review' page

#      @sanity1
  Scenario: As a anonymous user , able to browse TV reviews, to understand member benefits
    Then user sees option for 'Member exclusive' in the which? recommendations drop down
    And 'lock with %' to reflect services offered for members exclusively

#  @sanity @wip
#  Scenario: Which? TV reviews page, is well structured and has various options to access, for the best & intuitive experience
#    Then various accesible, link sections are available in the top heading region of the portal, with dynamic counts for each section
#      | opt1            | opt2      | opt3       | opt4          |
#      | All Televisions | Best Buys | Don't Buys | Advice Guides |
#    And drop down filter options, where users can choose to narrow the results
#      | filter1                | filter2     | filter3     | filter4      |
#      | Which? recommendations | Screen size | Screen type | More filters |
#    And a section that links to 'find-the-best-television'
#    And scrollable default sorted list of TV's with further sort/filter options, dynamic counts and paging options at the bottom
#
##  @regression @wip
#  Scenario : TV reviews page has navigation access to other sections of the website
#    Then top heading section has links to :
#      | Technology | Home & garden | Money | Baby & child | Cars&travel | Campaigns | Services | More from Which? | Search | Login | Join |
#    And each of these are accesible to and from TV review page
#    And selectable drop down with options for other 'TV & home entertainment'
#    When user scrolls till the end of the page
#    Then user sees common footer links to 'Popular Categories'

#  Scenario Outline: TV reviews page overlays with Feedback pop-up, and accessible
#    Given A <user_type>
#    When lands on 'TV review' page
#    Then users can send 'feed back' for website
#    And clicking 'feed back' would reveal a popup to enter details and submit
#
#    Examples:
#      | user_type     |
#      | logged-in     |
#      | non-logged-in |
