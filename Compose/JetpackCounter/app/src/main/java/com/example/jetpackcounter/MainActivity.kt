package com.example.jetpackcounter
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue

class MainActivity : ComponentActivity() {
    var count by mutableStateOf(0) // Initialize count to 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Counter(count, onIncrement = { count++ }, onDecrement = { count-- }, onReset = { count = 0 })
        }
    }

    @Composable
    fun Counter(
        count: Int,
        onIncrement: () -> Unit,
        onDecrement: () -> Unit,
        onReset: () -> Unit
    ) {
        Column {
            Text(text = "Count: $count")
            Row {
                Button(onClick = onDecrement) {
                    Text("-")
                }
                Spacer(modifier = Modifier.padding(horizontal = 8.dp))
                Button(onClick = onIncrement) {
                    Text("+")
                }
            }
            Button(onClick = onReset) {
                Text("Reset")
            }
        }
    }

}

