module LLT

  class Entity
    def initialize(e)
      @val = e
    end

    def transform(folds)
      return @val
    end

    def get
      return Communicable.new(transform(@val))
    end

    class Limitations
      def get
        return Communicable.new(transform(super.get))
      end
    end
  end

  #We subclass Effects within Entity due to Newton's Second Law
  class Effects < Entity

  end

  class Communicable < Effects
    def get
      return @val
    end

    def set(c)
      @val = c
    end
  end

  class Perspective < Communicable
    def get
      return Communicable.new(@val)
    end
  end

  class Clock < Entity
    def get
      return Communicable.new(@val)
    end
  end
end