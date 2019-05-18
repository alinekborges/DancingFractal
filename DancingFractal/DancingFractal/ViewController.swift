//
//  ViewController.swift
//  DancingFractal
//
//  Created by Aline Borges on 18/05/19.
//  Copyright © 2019 Aline Borges. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fractalRadius:CGFloat = 0.4
    var numberOfPoints = 7
    var polygonSides = 5
    var backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let fractal = FractalView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.view.addSubview(fractal)

        fractal.radius = fractalRadius

        fractal.numberOfPoints = numberOfPoints

        fractal.polygonSides = polygonSides

        fractal.backgroundColor = backgroundColor

        fractal.start()
    }


}

