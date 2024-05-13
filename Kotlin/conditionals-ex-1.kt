fun main() {
    println("Enter your grade:")
    val grade = readLine()?.toIntOrNull() ?: 0

    val letterGrade = when (grade) {
        in 90..100 -> "A"
        in 80..89 -> "B"
        in 70..79 -> "C"
        in 60..69 -> "D"
        else -> "F"
    }

    println("Your letter grade is: $letterGrade")
}