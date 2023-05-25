//
//  InstagramCellModel.swift
//  Task11UITableViewCustomDesign
//
//  Created by Богдан Бакун on 21.05.2023.
//

import UIKit

struct InstaCell {
    let avatarImageName: String
    let accountName: String
    let postImageName: String
    let viewsCount: Int
    let description: String
    let countOfComments: Int
    let postedAt: String
}

struct InstaPosts {
    static let posts: [InstaCell] = [
        InstaCell(avatarImageName: "detailingAvatar", accountName: "aduone_detailing", postImageName: "AduoneDetailingPhotoPost", viewsCount: 250, description: " High-quality preparation, safe disassembly of the car, concentration and detailed work of our masters on protecting the car with an anti-gravel film are the key to high-quality work in our studio.", countOfComments: 12, postedAt: "5 minutes ago"),
        InstaCell(avatarImageName: "av2", accountName: "detailingCS", postImageName: "ph2", viewsCount: 937, description: "detailingCS Forberedelse af høj kvalitet, sikker demontering af bilen, koncentration og detaljeret arbejde af vores mestre med at beskytte bilen med en anti-grusfilm er nøglen til arbejde af høj kvalitet i vores atelier.", countOfComments: 192, postedAt: "55 minutes ago"),
        InstaCell(avatarImageName: "av3", accountName: "auto_shine", postImageName: "ph3", viewsCount: 10519, description: "auto_shine Augstas kvalitātes sagatavošana, droša automašīnas demontāža, koncentrēšanās un detalizēts mūsu meistaru darbs pie automašīnas aizsardzības ar pretgružu plēvi.", countOfComments: 3, postedAt: "10 hours ago")
    ]
}
