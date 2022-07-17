// Create a function that will take a string as an argument. In this function, use your favourite loop to capitalise the first letter of each word, 
// whilst making each other letter lowercase

// E.g. capitaliseTheFront("sinGLE"), should return "Single"

// E.g. capitaliseTheFront("TWO words"), should return "Two Words"

// E.g. capitaliseTheFront("Quite a Long SENTENCE!"), should return "Quite A Long Sentence!"

const capitaliseTheFront = (string) => {

	let new_string = "";

	for (let i = 0; i < string.length; i++) {
		if (i == 0) {
			new_string += string[i].toUpperCase();
		} else if (string[i-1] == " ") {
			new_string += string[i].toUpperCase();
		} else {
			new_string += string[i].toLowerCase();
		}
	}

	return new_string;
}

// Leave this line
module.exports = capitaliseTheFront;

