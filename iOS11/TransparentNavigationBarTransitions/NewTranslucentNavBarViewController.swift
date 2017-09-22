
import UIKit

class NewTranslucentNavBarViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
		let imageView = UIImageView(image: #imageLiteral(resourceName: "floorplan"))
		imageView.isUserInteractionEnabled = true
		imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
		view.addSubview(imageView)
		imageView.translatesAutoresizingMaskIntoConstraints = false
		imageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
		imageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
		imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		
		let navigationBar = CustomNavigationBar.addCustomNavigationBar(toView: view,
		                                                               color: .clear,
		                                                               tintColor: .black,
		                                                               height: navigationBarHeight)
		let titleNavigationItem = UINavigationItem(title: "Hello")
		titleNavigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "icBackarrow"),
		                                                        style: .plain,
		                                                        target: self,
		                                                        action: #selector(pop))
		navigationBar.setItems([titleNavigationItem], animated: false)
    }
	
	@objc
	private func pop() {
		navigationController?.popViewController(animated: true)
	}
	
	@objc
	private func tap() {
		let viewController = OpaqueNavBarViewController()
		navigationController?.pushViewController(viewController, animated: true)
	}
}

extension UIImage {
    static func image(withColor color: UIColor, size: CGSize = .zero) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { context in
            context.cgContext.setFillColor(color.cgColor)
            context.cgContext.addRect(CGRect(origin: .zero, size: size))
            context.cgContext.drawPath(using: .fill)
        }
    }
}
