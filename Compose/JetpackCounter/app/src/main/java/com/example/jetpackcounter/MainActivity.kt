package com.example.jetpackcounter

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

class MainActivity : ComponentActivity() {
    var count by mutableStateOf(0) // Initialize count to 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Counter(
                count = count,
                onIncrement = { count++ },
                onDecrement = { count-- },
                onReset = { count = 0 }
            )
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