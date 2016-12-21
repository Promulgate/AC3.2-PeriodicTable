//
//  ElementView.swift
//  AC3.2-PeriodicTable
//
//  Created by Eric Chang on 12/21/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit

class ElementView: UIView {
    //MARK: - Outlets
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var symbolLabel: UILabel!
    
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("ElementView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
    
}
