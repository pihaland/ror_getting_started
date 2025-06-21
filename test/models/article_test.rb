require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Article.new
    assert_not article.save, "Saved the article without a title"
  end

  test "should report error" do
    # переменная some_undefined_variable не определена в тесте
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
