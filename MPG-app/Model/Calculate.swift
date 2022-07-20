//
//  Calculate.swift
//  MPG-app
//
//  Created by Beks on 20/7/22.
//

import Foundation


class Calculate {
    
    private func rename(_ number: Double) -> String {

          let startResult = String(number)
          var finalResult: String = ""
          var count = 0


          for (index, value) in startResult.enumerated() {
            if value == "." {
              finalResult += ","
              count = index
              break
            }
            finalResult += String(value)
          }

          for (index, value) in startResult.enumerated() {
            if index == count + 1 || index == count + 2 {
              finalResult += String(value)
            } else {
              continue
            }
          }
          
          return finalResult
        }
    
    func calculating(litr: Double, km: Double) -> String {
        return rename(litr / km * 100)
    }
}
