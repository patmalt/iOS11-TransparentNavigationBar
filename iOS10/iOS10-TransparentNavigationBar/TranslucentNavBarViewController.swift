
import UIKit

class TranslucentNavBarViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title = "Translucent Nav Bar"
		view.backgroundColor = .lightGray
		view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.navigationBar.isTranslucent = true
		navigationController?.navigationBar.alpha = 0.2
		navigationController?.navigationBar.barTintColor = .purple
		navigationController?.navigationBar.tintColor = .white
		navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
	}
	
	@objc
	private func tap() {
		let viewController = OpaqueNavBarViewController()
		navigationController?.pushViewController(viewController, animated: true)
	}
}
