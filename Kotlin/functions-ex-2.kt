
fun main() {
    val numbers = listOf(1, 5, 2, 8, 3, 7, 4)
    val max = findMax(numbers)
    println("Maximum: $max")

    val evenNumbers = filterEvenNumbers(numbers)
    println("Even numbers: $evenNumbers")

    val doubles = listOf(1.0, 2.5, 3.0, 4.5)
    val average = calculateAverage(doubles)
    println("Average: $average")
}

fun findMax(numbers: List<Int>): Int {
    if (numbers.isEmpty()) {
        throw IllegalArgumentException("List is empty.")
    }
    var max = numbers[0]
    for (number in numbers) {
        if (number > max) {
            max = number
        }
    }
    return max
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double {
    if (numbers.isEmpty()) {
        throw IllegalArgumentException("List is empty.")
    }
    return numbers.sum() / numbers.size
}