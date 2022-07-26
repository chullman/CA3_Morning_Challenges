// Atomic Blonde
// https://edstem.org/au/courses/7623/challenges/57068
// A number is an atomic blonde number if the sum and product of its digits are equal. Write a program to check if a number is an atomic blonde number or not. 

// E.g. atomicBlonde(123), should return true (as 1 + 2 + 3 equals 6, as does 1 * 2 * 3)

// E.g. atomicBlonde(23), should return false (as 2 + 3 equals 5, whereas  2 * 3 equals 6)

const atomicBlonde = (num) => {
    const operations = {
      "+" : (operand1, operand2) => {
        return operand1 + operand2;
      },
      "*" : (operand1, operand2) => {
        return operand1 * operand2;
      }
    };
  
    const calculate = (startingAccum, operation) => {
      const result = num.toString().split('').reduce( (accumulator, digit) => {
        return operation(accumulator, parseInt(digit));
      }, startingAccum);
      return result;
    };
  
    return (calculate(0, operations["+"])) === (calculate(1, operations["*"])) ? true : false;
  }

  module.exports = {atomicBlonde};

  console.log(atomicBlonde(123));
