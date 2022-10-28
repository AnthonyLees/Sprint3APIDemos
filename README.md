# Sprint3APIDemos
We use two external APIs for this project: VisionKit and Firebase Firestore.

1. VisionKit:
Link to documentation: https://developer.apple.com/documentation/visionkit

2. Firebase Firestore:
Link to documentation: https://firebase.google.com/docs/firestore

In terms of the collections we will be using in Firestore, there are 7 in total, with their names and fields listed below:

1. users:
id (string)
balance_owed (number)
balance_owed_to (number)
email (string)
full_name (string)
password (string)
phone_number (string)

2. user_items:
id (string)
item_id (string)
user_id (string)

3. friends:
id (string)
active (boolean)
user_id1 (string)
user_id2 (string)

4. bills:
id (string)
date (string)
description (string)
title (string)

5. bill_items:
id (string)
bill_id (string)
name (string)
price (number)

6. bill_lists:
id (string)
bills (string array)
user_id (string)

7. settle_bills:
id (string)
balance (number)
bill_id (string)
settled (boolean)
user_id1 (string)
user_id2 (string)



