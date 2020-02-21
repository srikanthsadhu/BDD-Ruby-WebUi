Then(/^user sees option for 'Member exclusive' in the which\? recommendations drop down$/) do
  puts("member exclusive elements check")
  expect(@tv_page.get_member_exclusive_opts.size).to be > 0

  #verify the elements of dropdown present and close
  expect(@tv_page.has_no_drop_down_best_buy?).to be true
  @tv_page.click_member_exclusive_recommendations
  expect(@tv_page).to have_drop_down_best_buy
end

And(/^'lock with %' to reflect services offered for members exclusively$/) do
  puts("pending implentation")
  expect(true);

end

Given(/^A anonymous user$/) do
  puts 'sets user for the test ANONYMOUS'
end

When(/^lands on 'TV review' page$/) do
  @tv_page = TvPage.new
  @tv_page.load
end