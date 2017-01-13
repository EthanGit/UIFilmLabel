//
//  UIFilmLabel.swift
//  DingOKMovie
//
//  Created by Ethan on 2015/6/12.
//  Copyright (c) 2015年 Ethan. All rights reserved.
//

import UIKit

//MARK: UIColor

extension UIColor {
   public class func colorFromCode(_ code: Int) -> UIColor {
        let red = CGFloat((code & 0xFF0000) >> 16) / 255.0 as CGFloat
        let green = CGFloat((code & 0xFF00) >> 8) / 255.0 as CGFloat
        let blue = CGFloat(code & 0xFF) / 255.0 as CGFloat
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

//MARK: UIFilmLabel
open class UIFilmLabel: UILabel {

    /**
    instance UIFilmLabel
    */
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Initialization code
        self.textColor = UIColor.white
        self.textAlignment = .center
        self.font = UIFont.boldSystemFont(ofSize: 14)

    }
    
    /**
    instance UIFilmLabel
    */
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialization code
        self.textColor = UIColor.white
        self.textAlignment = .center
        self.font = UIFont.boldSystemFont(ofSize: 14)
    }

    /**
    setFilmLevelStr
    */
    open func setFilmLevelStr(_ filmLevelStr:String) {
        switch filmLevelStr {
        case "G", "普":
            self.text = filmLevelStr
            self.backgroundColor = UIColor.colorFromCode(0x4CB503)
        case "P", "護":
            self.text = filmLevelStr
            self.backgroundColor = UIColor.blue
        case "PG", "輔":
            self.text = filmLevelStr
            self.backgroundColor = UIColor.orange
        case "R", "限":
            self.text = filmLevelStr
            self.backgroundColor = UIColor.red
        default:
            self.text = ""
            self.backgroundColor = UIColor.clear
        }
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
}
