//
//  ViewController.swift
//  RandomPhotoAPI
//
//  Created by 王冊 on 2021/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    func fetchImage() {
        let urlStr = "https://picsum.photos/400/400"
        
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data =  data {
                    DispatchQueue.main.async {
                        self.imageView.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            fetchImage()
    }

    @IBAction func changeImage(_ sender: UIButton) {
        fetchImage()
    }

}
