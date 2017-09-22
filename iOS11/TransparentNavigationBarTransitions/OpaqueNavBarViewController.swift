
import UIKit

class OpaqueNavBarViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title = "Opaque View Controller"
		view.backgroundColor = .lightGray
		view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
		
		let navigationBar = CustomNavigationBar.addCustomNavigationBar(toView: view,
		                                                               color: .purple,
		                                                               tintColor: .white,
		                                                               height: navigationBarHeight)
		let navigationItem = UINavigationItem(title: "Opaque")
		navigationBar.setItems([navigationItem], animated: false)
	}
	
	@objc
	private func tap() {
		let viewController = NewTranslucentNavBarViewController()
		navigationController?.pushViewController(viewController, animated: true)
	}
}
