//
//  CompanyClass.swift
//  iOS_Week_1
//
//  Created by Cokomel on 23.09.2021.
//

import Foundation

class CompanyClass {
    let name: String
    let foundationYear: Int
    var employeeList: [EmployeeStruct] = []
    let type : CompanyEnum
    
    init(name: String, foundationYear: Int, type: CompanyEnum) {
        self.name = name
        self.foundationYear = foundationYear
        self.type = type
    }
    
    func setEmployeeList(by list: [EmployeeStruct])  {
        employeeList = list
    }
    
    func display() {
        print("The company name is \(name) which is founded in \(foundationYear) as \(type) Company. \(name) has \(String(describing: employeeList.count)) employees.")
    }
}
