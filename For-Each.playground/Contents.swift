for number in Array(0...10) {
	print("The number is \(number)")
}

Array(0...10).forEach {
	print("The number is \($0)")
}