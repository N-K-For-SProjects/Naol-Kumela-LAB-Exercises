package com.example.composetutorial
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.Text

class Lesson1 : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Text("Hello world!")
        }
    }
}

// ...
//import androidx.compose.runtime.Composable
//
//class MainActivity : ComponentActivity() {
//    override fun onCreate(savedInstanceState: Bundle?) {
//        super.onCreate(savedInstanceState)
//        setContent {
//            MessageCard("Android")
//        }
//    }
//}
//
//@Composable
//fun MessageCard(name: String) {
//    Text(text = "Hello $name!")
//}

// ...
//import androidx.compose.ui.tooling.preview.Preview
//
//@Composable
//fun MessageCard(name: String) {
//    Text(text = "Hello $name!")
//}
//
//@Preview
//@Composable
//fun PreviewMessageCard() {
//    MessageCard("Android")
//}


