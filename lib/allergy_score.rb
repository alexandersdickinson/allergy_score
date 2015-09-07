class Fixnum
  def allergy_score
    allergies = {"cats" => 128, "pollen" => 64, "chocolate" => 32, "tomatoes" => 16, "strawberries" => 8, "shellfish" => 4, "peanuts" => 2, "eggs" => 1}
    user_allergies = []
    score = self
    allergies.each() do |key, value|
      if score / value > 0
        score = score - value
        user_allergies.push(key)
      end
    end
    user_allergies = user_allergies.join(', ').split(' ')
    user_allergies.insert(-2, "and") if user_allergies.length() > 1
    user_allergies = "You are allergic to #{user_allergies.join(' ')}."
  end
end