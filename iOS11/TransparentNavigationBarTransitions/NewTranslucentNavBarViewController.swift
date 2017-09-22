
import UIKit

class NewTranslucentNavBarViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
        
        addCustomNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @objc
    private func tap() {
        navigationController?.popViewController(animated: true)
    }
    
    func addCustomNavigationBar(color: UIColor = .clear, tintColor tint: UIColor = .white) {
        let navigationBar = UINavigationBar()
        
        let titleNavigationItem = UINavigationItem()
        titleNavigationItem.title = title ?? "Hello"
        navigationBar.setItems([titleNavigationItem], animated: false)
        
        navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navigationBar.backgroundColor = color
        navigationBar.barTintColor = color
        navigationBar.tintColor = tint
        navigationBar.shadowImage = UIImage()
        navigationBar.setBackgroundImage(UIImage(), for: .top, barMetrics: .default)
        
        view.addSubview(navigationBar)
        
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        navigationBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        let navigationBarHeight = navigationController?.navigationBar.frame.height ?? 44
        navigationBar.heightAnchor.constraint(equalToConstant: navigationBarHeight).isActive = true
        
        let topper = UIView()
        topper.backgroundColor = color
        view.addSubview(topper)
        topper.translatesAutoresizingMaskIntoConstraints = false
        topper.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topper.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topper.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topper.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
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
