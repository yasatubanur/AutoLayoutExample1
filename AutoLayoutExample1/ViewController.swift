//
//  ViewController.swift
//  AutoLayoutExample1
//
//  Created by Tuba Nur YAŞA on 8.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "These"
        label1.backgroundColor = .red
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "Are"
        label2.backgroundColor = .cyan
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "Some"
        label3.backgroundColor = .yellow
        label3.sizeToFit()

        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.text = "Awesome"
        label4.backgroundColor = .green
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.text = "Labels"
        label5.backgroundColor = .orange
        label5.sizeToFit()
        
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        let viewsDictionary = ["label1": label1, "label2" : label2, "label3" : label3, "label4" : label4, "label5" : label5]
        
        for label in viewsDictionary.keys{
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
        }
        
        let metrics = ["labelHeight" : 75]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(labelHeight@999)]-[label3(labelHeight@999)]-[label4(labelHeight@999)]-[label5(labelHeight@999)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
        
    }


}

