//
//  ViewController.swift
//  iOS_Week_1
//
//  Created by Erkut Bas on 19.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToAlgorithmPage(_ sender: Any) {
        
        guard let viewController = storyboard?.instantiateViewController(identifier: "AlgorithmViewController") else {
            fatalError("Opps there is no such viewController")
        }
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    @IBAction func basicsTest(_ sender: Any) {
        // please provide a couple of sample functionality for class, struct and enum use cases by creating your own modules. We provide you some sample class, enum and struct please provide your own.
        // The code below is just sample
//        let structObj = SampleStruct(title: "title", subTitle: "subTitle")
//        let classObj = SampleClass(name: "name", surName: "surname").setTitleObject(by: structObj)
//        classObj.display()
//        
        
        
        let hepsiBurada = CompanyClass(name: "HepsiBurada", foundationYear: 2000, type: CompanyEnum.ECommercial)
        let employeeList : [EmployeeStruct] = [EmployeeStruct(name: "Merve", surname: "Uslu Erbaş", age: 28) , EmployeeStruct(name: "X", surname: "Y", age: 25), EmployeeStruct(name: "Z", surname: "W", age: 30)]
        
        hepsiBurada.setEmployeeList(by: employeeList)
        hepsiBurada.display()
        
    }

    
}

