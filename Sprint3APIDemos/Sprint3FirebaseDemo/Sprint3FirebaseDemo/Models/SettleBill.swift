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
  var settled: Bool
  var user_id1: String
  var user_id2: String
  
  // MARK: Codable
  enum CodingKeys: String, CodingKey {
    case id
    case balance
    case bill_id
    case settled
    case user_id1
    case user_id2
  }
}
