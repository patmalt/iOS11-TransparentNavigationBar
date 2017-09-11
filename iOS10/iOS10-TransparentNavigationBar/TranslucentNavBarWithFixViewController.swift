
import UIKit

class TranslucentNavBarWithFixViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title = "10.0 Fix in 11.0"
		view.backgroundColor = .lightGray
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		UIApplication.shared.keyWindow?.backgroundColor = .purple
        extendedLayoutIncludesOpaqueBars = true
        edgesForExtendedLayout = .top
        navigationController?.navigationBar.isTranslucent = true
		navigationController?.navigationBar.alpha = 1.0
		navigationController?.navigationBar.barTintColor = .purple
		navigationController?.navigationBar.tintColor = .white
		navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        navigationController?.navigationBar.subviews.first?.alpha = 0.2
    }
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		UIApplication.shared.keyWindow?.backgroundColor = nil
	}
}
