//
//  ** Ganesh Hennigs
// * Poli-Swipe Satyrical Art Piece
// * GaneshHennigs.com ©GaneshHennigs 2017

import UIKit
import Parse


class MatchesTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var matchesImageView: RoundImageView!
    @IBOutlet weak var messagesLabel: UILabel!
    @IBOutlet weak var messagesTextField: BorderTextField!
    @IBOutlet weak var userIdLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.messagesTextField.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func sendButtonTapped(_ sender: AnyObject) {
        
        print("MATT: \(userIdLabel.text)")
        print("MATT: \(messagesTextField.text)")
        
        let message = PFObject(className: "Message")
        message["sender"] = PFUser.current()?.objectId!
        message["recipient"] = userIdLabel.text
        message["content"] = messagesTextField.text
        message.saveInBackground()
        
        // reset textField
        messagesTextField.text = ""
        
    }
    
    
    // MARK: Keyboard Method
    
    // close keyboard when user presses return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //self.view.endEditing(true)
        textField.resignFirstResponder()
        return true
    }
    
}
