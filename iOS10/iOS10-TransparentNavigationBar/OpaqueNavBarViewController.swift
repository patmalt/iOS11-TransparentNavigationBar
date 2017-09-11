
import UIKit

class OpaqueNavBarViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title = "Opaque View Controller"
		view.backgroundColor = .lightGray
		view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.navigationBar.isTranslucent = false
		navigationController?.navigationBar.alpha = 1.0
		navigationController?.navigationBar.barTintColor = .purple
		navigationController?.navigationBar.tintColor = .white
		navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        navigationController?.navigationBar.subviews.first?.alpha = 1
	}
	
	@objc
	private func tap() {
		let viewController = TranslucentNavBarWithFixViewController()
		navigationController?.pushViewController(viewController, animated: true)
	}
}
