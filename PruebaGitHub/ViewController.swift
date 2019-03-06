//
//  ViewController.swift
//  PruebaGitHub
//
//  Created by Laboratorio UNAM-Apple 24 on 3/6/19.
//  Copyright © 2019 Tafolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Top -> Arriba
         * Bottom -> Abajo
         * Leading -> Izquierda
         * Trailing -> Derecha */
        
        let viewRoja = UIView()
        
        viewRoja.backgroundColor = .red
        
        view.addSubview(viewRoja)
        
        viewRoja.translatesAutoresizingMaskIntoConstraints = false
        
        viewRoja.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        viewRoja.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        viewRoja.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        viewRoja.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }


}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, trailing: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor){
        translatesAutoresizingMaskIntoConstraints = false
        
        topAnchor.constraint(equalTo: top).isActive = true
        leadingAnchor.constraint(equalTo: leading).isActive = true
        trailingAnchor.constraint(equalTo: trailing).isActive = true
        bottomAnchor.constraint(equalTo: bottom).isActive = true
    }
}

