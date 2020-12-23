# frozen_string_literal: true
  class Entity
    attr_accessor :e

    include Enumerable

    def say_hi
      puts "Hello, I'm #{@e}" unless @e.nil?
    end

    def transform(_folds)
      _folds(@e) unless e.frozen?
    end

    def limitation; end
  end

  class Effects < Entity
    # We subclass Effects within Entity due to Newton's Second Law
  end

  class Communicable < Effects
    attr_accessor :c

    # Static Intention of Communicable
    def _communicable?
      say_hi?
    end

    def _process(fact)
      @c + fact
    end
  end

  class Perspective < Communicable
  end

  class Clock < Entity
  end

  class World < Entity
  end
