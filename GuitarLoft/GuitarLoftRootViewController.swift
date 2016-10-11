//
//  ViewController.swift
//  GuitarLoft
//
//  Created by Brandon Lancaster on 9/16/16.
//  Copyright © 2016 Ameren. All rights reserved.
//

import UIKit

class GuitarLoftRootViewController: UIViewController {
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        let rightBar = UIBarButtonItem(title: "Guitars", style: .Plain, target: self, action: #selector(goToGuitarListViewController))
        navigationItem.rightBarButtonItem = rightBar
        
        view.backgroundColor = UIColor.whiteColor()

    }
    
    override func viewDidAppear(animated: Bool) {
        navigationController?.navigationBar.alpha = 0.5
        navigationController?.navigationBar.barTintColor = UIColor.yellowColor()
        navigationController!.navigationBar.titleTextAttributes =
            ([NSFontAttributeName: UIFont(name: "AmericanTypewriter-Bold", size: 30)!,
                NSForegroundColorAttributeName: UIColor.blackColor()])
        navigationController?.navigationBar.tintColor = UIColor.blackColor()
        navigationItem.title = "Guitar Loft"

    }
    

    func goToGuitarListViewController() {
        
        self.navigationController?.pushViewController(GuitarListViewController(), animated: true)
    }

    



}

