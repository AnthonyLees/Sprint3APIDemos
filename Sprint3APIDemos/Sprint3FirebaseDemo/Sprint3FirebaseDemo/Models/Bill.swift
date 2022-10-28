//
//  Bill.swift
//  Sprint3FirebaseDemo
//
//  Created by Anthony A Lees on 10/27/22.
//

import Foundation
import FirebaseFirestoreSwift

struct Bill: Identifiable, Codable {
    
  // MARK: Fields
  @DocumentID var id: String?
  var bill_owers: [String]
  var bill_payers: [String]
  var date: String
  var description: String
  var title: String
  
  // MARK: Codable
  enum CodingKeys: String, CodingKey {
    case id
    case bill_owers
    case bill_payers
    case date
    case description
    case title
  }
}
