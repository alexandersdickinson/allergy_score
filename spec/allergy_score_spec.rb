require('rspec')
require('allergy_score')

describe('Fixnum#allergy_score') do
  it('returns what a user is allergic to based on their allergy score.') do
    expect(152.allergy_score()).to(eq('You are allergic to cats, tomatoes, and strawberries.'))
  end
end