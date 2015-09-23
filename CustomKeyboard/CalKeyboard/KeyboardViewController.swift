//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    
    @IBOutlet var emojiButton1: UIButton!
    @IBOutlet var emojiButton2: UIButton!
    @IBOutlet var emojiButton3: UIButton!
    @IBOutlet var emojiButton4: UIButton!
    @IBOutlet var emojiButton5: UIButton!
    @IBOutlet var emojiButton6: UIButton!
    @IBOutlet var emojiButton7: UIButton!
    @IBOutlet var emojiButton8: UIButton!
    @IBOutlet var emojiButton9: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    /*
    func typeConfusedEmoji1(sender: UIButton) {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("((+_+))")
    }
    func typeConfusedEmoji2() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(゜-゜)")
    }
    func typeConfusedEmoji3() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(゜レ゜)")
    }
    func typeConfusedEmoji4() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(+o+)")
    }
    func typeConfusedEmoji5() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(゜_゜)")
    }
    func typeConfusedEmoji6() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(゜.゜)")
    }
    func typeConfusedEmoji7() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(?_?)")
    }
    func typeConfusedEmoji8() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(゜_゜>)")
    }
    func typeConfusedEmoji9() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(゜゜)")
    }
    */
    
    func typeConfusedEmoji(sender: UIButton) {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(sender.titleLabel!.text!)
    }
    func didTapDelete() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    func didTapReturn() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    func didTapSpace() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(" ")
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        emojiButton1.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        emojiButton2.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        emojiButton3.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        emojiButton4.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        emojiButton5.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        emojiButton6.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        emojiButton7.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        emojiButton8.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        emojiButton9.addTarget(self, action: "typeConfusedEmoji:", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "didTapDelete", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "didTapReturn", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "didTapSpace", forControlEvents: .TouchUpInside)
    }


}
