package com.example.composetutorial
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent


// ...

class Lesson3 : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            ComposeTutorialTheme {
                Surface(modifier = Modifier.fillMaxSize()) {
                    MessageCard(Message("Android", "Jetpack Compose"))
                }
            }
        }
    }
}

@Preview
@Composable
fun PreviewMessageCard() {
    ComposeTutorialTheme {
        Surface {
            MessageCard(
                msg = Message("Lexi", "Take a look at Jetpack Compose, it's great!")
            )
        }
    }
}


// ...
//import androidx.compose.material3.Surface

//@Composable
//fun MessageCard(msg: Message) {
//    Row(modifier = Modifier.padding(all = 8.dp)) {
//        Image(
//            painter = painterResource(R.drawable.profile_picture),
//            contentDescription = null,
//            modifier = Modifier
//                .size(40.dp)
//                .clip(CircleShape)
//                .border(1.5.dp, MaterialTheme.colorScheme.primary, CircleShape)
//        )
//        Spacer(modifier = Modifier.width(8.dp))
//
//        Column {
//            Text(
//                text = msg.author,
//                color = MaterialTheme.colorScheme.secondary,
//                style = MaterialTheme.typography.titleSmall
//            )
//
//            Spacer(modifier = Modifier.height(4.dp))
//
//            Surface(shape = MaterialTheme.shapes.medium, shadowElevation = 1.dp) {
//                Text(
//                    text = msg.body,
//                    modifier = Modifier.padding(all = 4.dp),
//                    style = MaterialTheme.typography.bodyMedium
//                )
//            }
//        }
//    }
//}

// ...

//@Composable
//fun MessageCard(msg: Message) {
//    Row(modifier = Modifier.padding(all = 8.dp)) {
//        Image(
//            painter = painterResource(R.drawable.profile_picture),
//            contentDescription = null,
//            modifier = Modifier
//                .size(40.dp)
//                .clip(CircleShape)
//                .border(1.5.dp, MaterialTheme.colorScheme.primary, CircleShape)
//        )
//        Spacer(modifier = Modifier.width(8.dp))
//
//        Column {
//            Text(
//                text = msg.author,
//                color = MaterialTheme.colorScheme.secondary,
//                style = MaterialTheme.typography.titleSmall
//            )
//
//            Spacer(modifier = Modifier.height(4.dp))
//
//            Text(
//                text = msg.body,
//                style = MaterialTheme.typography.bodyMedium
//            )
//        }
//    }
//}


