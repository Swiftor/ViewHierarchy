
import UIKit

class ViewController: UIViewController {

    @IBOutlet var secondView: UIView!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonPressed(sender: UIButton) {
        if sender.selected {
            secondView.removeFromSuperview()
            sender.selected = false
        } else {
            view.addSubview(secondView)
            secondView.translatesAutoresizingMaskIntoConstraints = false
            let bottomConstraint = secondView.bottomAnchor.constraintEqualToAnchor(button.topAnchor)
            let leftConstraint = secondView.leftAnchor.constraintEqualToAnchor(button.leftAnchor)
            let rightConstraint = secondView.rightAnchor.constraintEqualToAnchor(button.rightAnchor)
            let heightConstraint = secondView.heightAnchor.constraintEqualToConstant(44)
            NSLayoutConstraint.activateConstraints([bottomConstraint, leftConstraint, rightConstraint, heightConstraint])
            sender.selected = true
        }
    }
}
