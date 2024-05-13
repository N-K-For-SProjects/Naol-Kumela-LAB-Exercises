fun main() {
    fun analyzeString(text: String): Triple<Int, Int, Int> {
    val words = text.trim().split("\\s+".toRegex()).size
    val uppercaseLetters = text.count { it.isUpperCase() }
    val vowels = text.count { it.toLowerCase() in "aeiou" }
    return Triple(words, uppercaseLetters, vowels)
}
}