
import UIKit

extension UIViewController {
	var navigationBarHeight: CGFloat {
		return navigationController?.navigationBar.frame.height ?? 44
	}
}

class CustomNavigationBar {
	@discardableResult
	static func addCustomNavigationBar(toView view: UIView,
	                                   color: UIColor = .clear,
	                                   tintColor: UIColor = .white,
	                                   height: CGFloat = 44) -> UINavigationBar
	{
		let navigationBar = UINavigationBar()
		
		navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: tintColor]
		navigationBar.backgroundColor = color
		navigationBar.barTintColor = color
		navigationBar.tintColor = tintColor
		navigationBar.shadowImage = UIImage()
		navigationBar.setBackgroundImage(UIImage(), for: .top, barMetrics: .default)
		
		view.addSubview(navigationBar)
		
		navigationBar.translatesAutoresizingMaskIntoConstraints = false
		navigationBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
		navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		navigationBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
		navigationBar.heightAnchor.constraint(equalToConstant: height).isActive = true
		
		let topper = UIView()
		topper.backgroundColor = color
		view.addSubview(topper)
		topper.translatesAutoresizingMaskIntoConstraints = false
		topper.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
		topper.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
		topper.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		topper.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		
		return navigationBar
	}
}
