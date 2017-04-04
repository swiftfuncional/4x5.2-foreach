import UIKit

struct User {}

class UserProvider {
	let users = [User]()

	func getUsers(_ process: (User) -> Void) {
		users.forEach(process)
	}
}

class ViewController: UIViewController {
	@IBOutlet var tableView: UITableView!

	let db = UserProvider()

	var users = [User]()

	override func viewDidLoad() {
		super.viewDidLoad()

		db.getUsers { user in
			users.append(user)

			let indexPath = [IndexPath(row: users.count - 1, section: 0)]

			tableView.beginUpdates()
			tableView.insertRows(at: indexPath, with: .automatic)
			tableView.endUpdates()
		}
	}
}