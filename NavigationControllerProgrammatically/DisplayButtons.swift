//
//  DisplayButtons.swift
//  NavigationControllerProgrammatically
//
//  Created by Sandip Das on 25/09/21.
//

import UIKit

class DisplayButtons:UIButton{
    override init(frame: CGRect){
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton(){
        setTitleColor(.white, for: .normal)
        backgroundColor = .systemBlue
        frame = CGRect(x: 0, y: 0, width: 200, height: 50)
    }
    
    
}
