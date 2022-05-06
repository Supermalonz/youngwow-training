class ProblemTwo
  def longest_string(a, b, c)
    pivot = []
    pivot_string = [[a, 'a'], [b, 'b'], [c, 'c']]
  
    while true
      pivot_string = pivot_string.sort
      if pivot.length >= 2 and pivot[-2] == pivot[-1] and pivot[-1] == pivot_string[2][1]
        temp = 1
      else
        temp = 2
      end
  
      if pivot_string[temp][0] != 0
        pivot.append(pivot_string[temp][1])
        pivot_string[temp][0] -= 1
      else
        break
      end
    end
    pivot.join('')
  end
end