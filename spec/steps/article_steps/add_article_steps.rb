module AddArticleSteps
  attr_accessor :article
  step 'I fill forms on new article page with correct data' do
    s = self
    s.article = create :article
    fill_in 'article_title', :with => s.article.title
    fill_in 'article_text', :with => s.article.text
  end

  step 'I should see newly created article on articles page' do
    s = self
    expect(page).to have_content(s.article.title)
  end
end

RSpec.configure { |c| c.include AddArticleSteps, :add_article_steps => true }