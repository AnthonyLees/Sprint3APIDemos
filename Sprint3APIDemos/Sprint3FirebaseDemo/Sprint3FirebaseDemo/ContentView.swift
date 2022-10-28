//
//  ContentView.swift
//  Sprint3FirebaseDemo
//
//  Created by Anthony A Lees on 10/27/22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var userRepository = UserRepository()
  @ObservedObject var userItemRepository = UserItemRepository()
  @ObservedObject var friendRepository = FriendRepository()
  @ObservedObject var billRepository = BillRepository()
  @ObservedObject var billItemRepository = BillItemRepository()
  @ObservedObject var billListRepository = BillListRepository()
  @ObservedObject var settleBillRepository = SettleBillRepository()
    var body: some View {
      let users = userRepository.users
      let user_items = userItemRepository.user_items
      let friends = friendRepository.friends
      let bills = billRepository.bills
      let bill_items = billItemRepository.bill_items
      let bill_lists = billListRepository.bill_lists
      let settle_bills = settleBillRepository.settle_bills
        VStack {
          Group {
            Text("User object")
            ForEach(users) { user in
              Text("id: " + user.id!)
              Text("balance_owed: " + String(user.balance_owed))
              Text("balance_owed_to: " + String(user.balance_owed_to))
              Text("email: " + user.email)
              Text("full_name: " + user.full_name)
              Text("password: " + user.password)
              Text("phone_number: " + user.phone_number)
            }
            Text("")
          }
          .font(.system(size: 12))

          Group {
            Text("User Item object")
            ForEach(user_items) { user_item in
              Text("id: " + user_item.id!)
              Text("item_id: " + user_item.item_id)
              Text("user_id: " + user_item.user_id)
            }
            Text("")
          }
          .font(.system(size: 12))

          Group {
            Text("Friend object")
            ForEach(friends) { friend in
              Text("id: " + friend.id!)
              Text("active: " + String(friend.active))
              Text("user_id1: " + friend.user_id1)
              Text("user_id2: " + friend.user_id2)
            }
            Text("")
          }
          .font(.system(size: 12))

          Group {
            Text("Bill object")
            ForEach(bills) { bill in
              Text("id: " + bill.id!)
              Text("date: " + bill.date)
              Text("title: " + bill.title)
              Text("description: " + bill.description)
            }
            Text("")
          }
          .font(.system(size: 12))
          
          Group {
            Text("Bill Item object")
            ForEach(bill_items) { bill_item in
              Text("id: " + bill_item.id!)
              Text("bill_id: " + bill_item.bill_id)
              Text("name: " + bill_item.name)
              Text("price: " + String(bill_item.price))
            }
            Text("")
          }
          .font(.system(size: 12))
          
          Group {
            Text("Bill List object")
            ForEach(bill_lists) { bill_list in
              Text("id: " + bill_list.id!)
              Text("bills (shows bill_id of bill): " + bill_list.bills[0])
              Text("user_id: " + bill_list.user_id )
            }
            Text("")
          }
          .font(.system(size: 12))

          Group {
            Text("Settle Bill object")
            ForEach(settle_bills) { settle_bill in
              Text("id: " + settle_bill.id!)
              Text("balance: " + String(settle_bill.balance))
              Text("bill_id: " + settle_bill.bill_id)
              Text("settled: " + String(settle_bill.settled))
              Text("user_id1: " + settle_bill.user_id1)
              Text("user_id2: " + settle_bill.user_id2)
            }
          }
          .font(.system(size: 12))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
