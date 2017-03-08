//
//  ** Ganesh Hennigs
// * Poli-Swipe Satyrical Art Piece
// * GaneshHennigs.com ©GaneshHennigs 2017

import UIKit

class MessagesTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1.0
        // rounded edges
        layer.cornerRadius = 2.0
    }
    
    // placeholder text position
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    // input text position
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
