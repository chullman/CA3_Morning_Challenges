function numJewelsInStones(jewels, stones) {
    let counter = 0;
    [...stones].forEach((stone) => {
        // using short circuit logic
        jewels.includes(stone) && counter++
    })
    return counter;
}

numJewelsInStones("aA", "aAAbbbb");