// Common Characters

// https://edstem.org/au/courses/7623/challenges/57076

// Write code which will return the common characters found in
// two different strings. 

// Note:

// You should only need to return the characters once.

// Spaces should not be included

// Ignore letter case

// The order of characters in the resulting string should follow the order of characters in string1


// Examples:

// commonCharacters("efg", "feg") => "efg"

// commonCharacters("We are both dragon energy", "I am God's vessel") => "eaodg"

// commonCharacters("Alright alright alright", "") => ""

function commonCharacters(string1, string2) {
    result = ""
    string1.toLowerCase().split('').forEach(function (c) {
       if (c !== " " && string2.toLowerCase().includes(c) && !(result.includes(c))) {
          result += c
       }    
    });
    return result;
 }
 
 module.exports = {commonCharacters}