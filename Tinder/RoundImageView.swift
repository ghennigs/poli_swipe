//
//  ** Ganesh Hennigs
// * Poli-Swipe Satyrical Art Piece
// * GaneshHennigs.com ©GaneshHennigs 2017
import UIKit

class RoundImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.height / 2
        clipsToBounds = true
    }
    
}
