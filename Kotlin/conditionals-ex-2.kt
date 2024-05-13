fun main() {
    val originalPrice = 100.0
    var discount = 0.6
    val discountThreshold = 0.5

    if (discount > discountThreshold) {
        println("Discount is too high. Setting it to the threshold of $discountThreshold")
        discount = discountThreshold
    }

    val finalPrice = originalPrice - (originalPrice * discount)

    println("Original Price: $originalPrice")
    println("Discount: $discount")
    println("Final Price: $finalPrice")
}