//
//  ViewController.swift
//  PageDesignTest
//
//  Created by Vitalii Kizlov on 15.06.2020.
//  Copyright © 2020 Vitalii Kizlov. All rights reserved.
//

import UIKit

extension UIView {
    @discardableResult
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colours: colours, locations: nil)
    }

    @discardableResult
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
}

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var avatarView: UIView!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var firstTrophyView: UIView!
    @IBOutlet weak var secondTrophyView: UIView!
    @IBOutlet weak var thirdTrophyView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureContent()
    }
    
    // MARK: - Configure Content
    
    private func configureContent() {
        title = "Suitability"
        avatarView.layer.cornerRadius = avatarView.bounds.height / 2
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.height / 2
        infoView.layer.cornerRadius = 5
        firstTrophyView.layer.cornerRadius = firstTrophyView.bounds.height / 2
        secondTrophyView.layer.cornerRadius = secondTrophyView.bounds.height / 2
        thirdTrophyView.layer.cornerRadius = thirdTrophyView.bounds.height / 2
    }
    
}

