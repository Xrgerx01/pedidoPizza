//
//  chekbox.swift
//  tareaPizza
//
//  Created by XrgerX on 24/07/16.
//  Copyright © 2016 XrgerX. All rights reserved.
//

import UIKit

class chekbox: UIButton {

    let checkedImage = UIImage(named: "checked_chekbox")! as UIImage
    let uncheckImage = UIImage(named: "unchecked_checkbox")! as UIImage
    
    var isCheked:Bool = false{
        didSet{
            if isCheked	== true {
                self.setImage(checkedImage, forState: .Normal)
            }
            else {
                self.setImage(uncheckImage, forState: .Normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(chekbox.buttondClicked(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.isCheked = false
    }
    
    func buttondClicked(sender:UIButton){
        if (sender == self) {
            if isCheked == true	{
                isCheked = false
            }
            else {
                isCheked = true
            }
        }
    }
    
    
}
