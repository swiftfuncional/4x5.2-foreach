struct User {}

class UserProvider {
	let users = [User]()

	func getUsers(_ process: (User) -> Void) {
		users.forEach(process)
	}
}