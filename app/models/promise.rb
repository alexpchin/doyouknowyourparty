class Promise < ActiveRecord::Base
  belongs_to :party

  def self.generate_answers(answers)
    answers.map do |party,hash|
      if party != "undefined"
        party_name = convert_to_uppercase_with_spaces(party)

        score = hash.select do |index, id|
          promise = Promise.find(id)
          party_name == promise.party.name
        end.to_a.count

        number_of_answers = hash.count

        {party: party_name, score: score, total: number_of_answers}
      end
    end.compact
  end

  private

  def self.convert_to_uppercase_with_spaces(name)
    name.camelize.underscore.split('_').collect{|c| c.capitalize}.join(' ')
  end
end
