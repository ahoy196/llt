# frozen_string_literal: true

class Entity
  attr_accessor :e

  def transform(_folds)
    @val
  end

  def limitation
    Communicable.new(transform(super.get))
  end
end

class Effects < Entity
  # We subclass Effects within Entity due to Newton's Second Law
end

class Communicable < Effects
  attr_accessor :c

  def is_empty
    # code here
  end
end

class Perspective < Communicable
  def get
    Communicable.new(@val)
  end
end

class Clock < Entity
  def get
    Communicable.new(@val)
  end
end
