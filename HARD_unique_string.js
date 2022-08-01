// Unique String
// Unique string

// https://edstem.org/au/courses/7623/challenges/57064

// Find the unique string in an array. A unique string contains characters that are not present in any other string in the array. Return the string that is unique.

// Assume that only one string in the array is unique. 

// Assume that at least one non-empty string is passed in as an argument.

// Example:

// uniqueString(["alright", "isod", "Alright", "ALRIGHT"]) => "isod"

function uniqueString(stringArray) {
    if (stringArray.length === 1) {
      return stringArray[0];
    }
  
    let chars = stringArray.join('');
  
    for (ch of chars) {
      let result = stringArray.filter((el) => el.toLowerCase().includes(ch.toLowerCase()));
  
      if (result.length === 1) {
        return result[0];
      }
    }
}

console.log(uniqueString(["alright", "isod", "Alright", "ALRIGHT"]));

module.exports = {uniqueString};