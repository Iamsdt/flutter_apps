fun main() {
    val i = readLine()?.toInt() ?: 0
    val li = readLine() ?: ""

    if (!li.contains("xxx")) {
        println(0)
        return
    }

    var pos = 0
    var count = 0
    while (pos < i) {
        if (i - pos > 3) {
            val x = li.slice(pos until pos + 3)
            if (x == "xxx") {
                pos += 3
                count += 3
            } else {
                pos++
            }
        } else {
            if (li[pos] == 'x') {
                count += 1
                pos++
            }
        }
    }

    println(count)
    println(count)
}