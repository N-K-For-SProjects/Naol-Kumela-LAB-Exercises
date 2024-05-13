
class BankAccount(val accountNumber: String, var balance: Double) {
    fun deposit(amount: Double) {
        balance += amount
    }

    fun withdraw(amount: Double) {
        if (balance >= amount) {
            balance -= amount
        } else {
            println("Insufficient funds.")
        }
    }

    fun printBalance() {
        println("Account Number: $accountNumber, Balance: $balance")
    }
}

fun main() {
    val account = BankAccount("1234567890", 1000.0)
    account.deposit(500.0)
    account.withdraw(200.0)
    account.printBalance()
}