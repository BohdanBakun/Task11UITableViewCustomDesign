//
//  InstaPostTableViewCell.swift
//  Task11UITableViewCustomDesign
//
//  Created by Богдан Бакун on 21.05.2023.
//

import UIKit

class InstaPostTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var accountNameLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var viewCountLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var countOfCommentsLabel: UILabel!
    @IBOutlet weak var postedAtLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarImage.layer.cornerRadius = 25
    }
    
}
