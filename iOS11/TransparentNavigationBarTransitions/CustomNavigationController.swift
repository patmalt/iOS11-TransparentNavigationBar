
import UIKit

class CustomNavigationController: UINavigationController {
    private var isPushAnimating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        interactivePopGestureRecognizer?.delegate = self
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        isPushAnimating = true
        super.pushViewController(viewController, animated: animated)
    }
}

extension CustomNavigationController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        isPushAnimating = false
    }
}

extension CustomNavigationController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        guard gestureRecognizer == interactivePopGestureRecognizer else {
            return true
        }
        
        return viewControllers.count > 1 && !isPushAnimating
    }
}