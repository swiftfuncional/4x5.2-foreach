for number in Array(0...10) {
	print("The number is \(number)")
}

let printNumber: (Int) -> Void = {
	print("The number is \($0)")
}

Array(0...10).forEach(printNumber)