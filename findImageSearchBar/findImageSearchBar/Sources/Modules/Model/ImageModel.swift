//
//  ImageModel.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import Foundation

struct ResultResponce: Decodable {
    var imagesResults: [ImageModel]
}

struct ImageModel: Decodable {
    var position: Int
    var thumbnail: String
    var link: String
}
