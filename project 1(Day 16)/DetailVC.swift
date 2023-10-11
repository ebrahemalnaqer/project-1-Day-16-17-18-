//
//  DetailVC.swift
//  project 1(Day 16-17-18)
//
//  Created by Ebraheem Alnaqer on 11/10/2023.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    var selectedImage:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        //to controll at the size of title for page
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage{
            ImageView.image = UIImage(named: imageToLoad)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    

}
