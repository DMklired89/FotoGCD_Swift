//
//  ImageService.swift
//  FotoGCD_Swift
//
//  Created by Dmitry on 30/04/2019.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import Foundation
import UIKit

class ImageService {
    
    static func downloadImage(by url: URL, completion: @escaping (_ image: UIImage?) ->()) {
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in var downloadedImage: UIImage?
            
            if let data = data {
                downloadedImage = UIImage(data: data)
            }
            
            DispatchQueue.main.async {
                completion(downloadedImage)
            }
        }
        dataTask.resume()
    }
}
