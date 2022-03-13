//
//  NewEmojiTableViewController.swift
//  Emoji Reader
//
//  Created by Tony on 13.03.2022.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descriptionTf: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBAction func textChange(_ sender: UITextField) {
        updateSaveButtonState()
    }
    private func updateSaveButtonState() {
        let emojiText = emojiTF.text ?? ""
        let nameText = nameTF.text ?? ""
        let descriptiobText = descriptionTf.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptiobText.isEmpty
    }
    
    private func updeteUi(){
        emojiTF.text = emoji.emoji
        nameTF.text = emoji.name
        descriptionTf.text = emoji.description
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updeteUi()
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTF.text ?? ""
        let name = nameTF.text ?? ""
        let description = descriptionTf.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite)
        
    }
   
}
