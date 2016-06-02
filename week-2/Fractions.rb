class Fractions
  attr_accessor :numerator, :denominator
  def initialize(top,bottom)
    @numerator = top
    @denominator = bottom
  end

  def to_fraction
    if @denominator == 0
      puts "You can't divide by zero"
    else
      @numerator.to_s + "/" + @denominator.to_s
    end
  end

  def to_decimal
    if @denominator == 0
      puts "You can't divide by zero"
    else
      @numerator.to_f / @denominator
    end
  end

  def simplify
    if @denominator == 0
      puts "You can't divide by zero"
    else
      bottom = @denominator
      top = @numerator
      if top > 0
        top.downto(2) do |x|
          if top % x == 0 && bottom % x == 0
            top = top/x
            bottom = bottom / x
          end
        end
      else
        top *= -1
        top.downto(2) do |x|
          if top % x == 0 && bottom % x == 0
            top = top/x
            bottom = bottom / x
          end
        end
        top *= -1
      end

      top.to_s + "/" + bottom.to_s
    end
  end

  def multiply
    @numerator.to_f * @denominator
  end

end
