fun main() {
    val distance = 10.0
    val unit = "kilometers"

    val convertedDistance = if (unit == "kilometers") {
        distance * 0.621371
    } else {
        distance * 1.60934
    }

    println(convertedDistance)
}