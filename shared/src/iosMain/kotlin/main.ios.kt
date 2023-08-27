import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.material.Text
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.interop.UIKitView
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.ComposeUIViewController
import kotlinx.cinterop.ExperimentalForeignApi
import platform.UIKit.UIView
import platform.UIKit.UIViewController

@OptIn(ExperimentalForeignApi::class)
fun ComposeWithUIKitView(createUIView: () -> UIView): UIViewController = ComposeUIViewController {
    Column {
        Text("How to use SwiftUI inside UIView inside Compose")
        UIKitView(
            factory = createUIView,
            modifier = Modifier.size(300.dp),
        )
    }
}

fun ComposeOnly(): UIViewController = ComposeUIViewController {
    Box(Modifier.fillMaxSize().background(Color.LightGray)) {
        Text("top", Modifier.align(Alignment.TopCenter))
        Text("ComposeOnly", Modifier.align(Alignment.Center))
        Text("bottom", Modifier.align(Alignment.BottomCenter))
    }
}
