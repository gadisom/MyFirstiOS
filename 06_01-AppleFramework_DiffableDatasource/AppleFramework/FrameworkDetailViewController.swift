//
//  FrameworkDetailViewController.swift
//  AppleFramework
//
//  Created by 김정원 on 2023/07/02.
//

import UIKit
import SafariServices

class FrameworkDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func learnMoreTapped(_ sender: Any) {
        guard let url = URL(string : framework.urlString) else {
            return
        }
        let safari = SFSafariViewController(url: url)
        present(safari, animated: true)
        
    }
    var framework : AppleFramework = AppleFramework (name: "Unknown", imageName: "", urlString: "", description: "")
    override func viewDidLoad() {
        super.viewDidLoad()

       updateUI()
    }
    func updateUI()
    {
        imageView.image = UIImage(named: framework.imageName)
        titleLabel.text = framework.name
        descriptionLabel.text = framework.description
        
    }
    
    
}
