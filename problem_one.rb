class ProblemOne
  def largest_number(number)
    number = number.to_s.split("").sort.reverse
    number.join.to_i
  end
end
