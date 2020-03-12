import java.text.SimpleDateFormat
import java.util.*

fun main() {
    val date = Date()

    val formatter = SimpleDateFormat("E MMM dd HH:mm:ss zz yyyy", Locale.getDefault())
    print(formatter.format(date))
}