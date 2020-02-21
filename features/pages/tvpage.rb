class TvPage < SitePrism::Page
  set_url "https://www.which.co.uk/reviews/televisions"

  element :member_badge, "[data-test-element='member-exclusive-badge']"
  elements :test_scores_pad_lock, "svg[name='padlockInCircle']"
  element :drop_down_best_buy, ".undefined [for='which_recommendations_best_buy']"

  def get_member_exclusive_opts
    arr = [member_badge, test_scores_pad_lock]
    puts "-----------**************------------Start"
    puts arr.inspect
    puts "-----------**************------------END"
    arr
  end

  def open_tv_review
    visit
  end

  def click_member_exclusive_recommendations
    puts "-----------**************------------is NOT displayed:"
    puts has_no_drop_down_best_buy?
    puts "-----------**************------------Clicked:"
    member_badge.click
    puts drop_down_best_buy
    puts "-----------**************------------displayed:"
    puts displayed?(drop_down_best_buy)
  end



end