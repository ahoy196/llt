# frozen_string_literal: true
require './llt'

class EntityTest <
  RSpec.describe 'begins with a string' do
    it 'can instantiate a world with a string' do
      w = Entity.new('a')
      !expect w.get
    end
  end

  RSpec.describe 'a world entity instantiated has a limitation' do
    it 'can instantiate a world entity with a limitation' do
      w = Entity.new('w')
      l = w.limitation()
      expect 'a'.equal?('a')
    end
  end
end
