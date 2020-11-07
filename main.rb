require_relative 'errors.rb'

def calculator(num_1, operator, num_2)
  if operator === '+'
    return num_1 + num_2
  elsif operator === '-'
    return num_1 - num_2
  elsif operator === '*'
    return num_1 * num_2
  elsif operator === '/'
    if num_2 === 0
      err = Error.new
      return err.zeroDivision
    end
    return num_1 / num_2

  end
end

calculator(2, "/", 0)

# If the input tries to divide by 0, return: "Can't divide by 0!"
#calculator(2, "+", 2) ➞ 4
