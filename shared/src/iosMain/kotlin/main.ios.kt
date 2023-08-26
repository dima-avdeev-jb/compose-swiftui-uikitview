import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.size
import androidx.compose.material.Text
import androidx.compose.ui.Modifier
import androidx.compose.ui.interop.UIKitView
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.ComposeUIViewController
import kotlinx.cinterop.ExperimentalForeignApi
import platform.MapKit.MKMapView
import platform.UIKit.UIView
import platform.UIKit.UIViewController

@OptIn(ExperimentalForeignApi::class)
fun ChatViewController(createUIView:()->UIView): UIViewController = ComposeUIViewController {
    Column {
        Text("How to use SwiftUI inside UIView inside Compose")
        UIKitView(
            factory = createUIView,
            modifier = Modifier.size(300.dp),
        )
    }
}

fun sendMessage(text: String) {
    store.send(Action.SendMessage(Message(myUser, timestampMs(), text)))
}

fun gradient3Colors() = ChatColors.GRADIENT_3

fun surfaceColor() = ChatColors.SURFACE
