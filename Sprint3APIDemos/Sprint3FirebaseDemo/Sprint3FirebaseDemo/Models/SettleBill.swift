//
//  SettleBill.swift
//  Sprint3FirebaseDemo
//
//  Created by Anthony A Lees on 10/27/22.
//

import Foundation
import FirebaseFirestoreSwift

struct SettleBill: Identifiable, Codable {
    
  // MARK: Fields
  @DocumentID var id: String?
  var balance: Int
  var bill_id: String
  var bill_ower: String
  var bill_payer: String
  var settled: Bool
  
  // MARK: Codable
  enum CodingKeys: String, CodingKey {
    case id
    case balance
    case bill_id
    case bill_ower
    case bill_payer
    case settled
  }
}
