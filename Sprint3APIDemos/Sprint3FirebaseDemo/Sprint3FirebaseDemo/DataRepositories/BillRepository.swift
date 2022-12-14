//
//  BillRepository.swift
//  Sprint3FirebaseDemo
//
//  Created by Anthony A Lees on 10/27/22.
//

import Foundation
import Combine
import FirebaseFirestore
import FirebaseFirestoreSwift

class BillRepository: ObservableObject {
  private let path: String = "bills"
  private let store = Firestore.firestore()
  
  @Published var bills: [Bill] = []
  private var cancellables: Set<AnyCancellable> = []
  
  init() {
    self.get()
  }
  
  func get() {
    store.collection(path)
      .addSnapshotListener { querySnapshot, error in
        if let error = error {
          print("Error getting books: \(error.localizedDescription)")
          return
        }

        self.bills = querySnapshot?.documents.compactMap { document in
          try? document.data(as: Bill.self)
        } ?? []
      }
  }
}
