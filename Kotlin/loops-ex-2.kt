
import kotlin.random.Random

fun main() {
    val length = 8
    val characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()"
    var password = ""
    for (i in 0 until length) {
        val randomIndex = Random.nextInt(characters.length)
        password += characters[randomIndex]
    }
    println("Generated password: $password")
}