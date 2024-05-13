fun main() {
    val strings = listOf("apple", "banana", "cherry")
    val uppercaseStrings = strings.map { it.toUpperCase() } // Use toUpperCase()

    val numbers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val filteredNumbers = numbers.filter { it > 5 }

    val sum = numbers.reduce { acc, num -> acc + num }

    println(uppercaseStrings)
    println(filteredNumbers)
    println(sum)
}