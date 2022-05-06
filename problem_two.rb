class ProblemTwo
  def next_index(pivot, pivot_string)
    return 1 if pivot.length >= 2 && pivot[-2] == pivot[-1] && pivot[-1] == pivot_string[2][1]
      
    2
  end
  def longest_string(a, b, c)
    pivot = []
    pivot_string = [[a, 'a'], [b, 'b'], [c, 'c']]
  
    while true
      pivot_string = pivot_string.sort
      temp = next_index(pivot, pivot_string)
  
      if pivot_string[temp][0] > 0
        pivot.append(pivot_string[temp][1])
        pivot_string[temp][0] -= 1
      else
        break
      end
    end
    pivot.join('')
  end
end
