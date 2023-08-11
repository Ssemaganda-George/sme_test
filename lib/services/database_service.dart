import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:charify/models/user_model.dart'; // Import the UserModel class
import 'package:charify/models/campaign_model.dart'; // Import the CampaignModel class

class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserModel> getUser(String uid) async {
    DocumentSnapshot doc = await _firestore.collection('users').doc(uid).get();
    return UserModel(
      uid: uid,
      email: doc['email'],
      displayName: doc['displayName'],
    );
  }

  Future<List<CampaignModel>> getCampaigns() async {
    QuerySnapshot snapshot = await _firestore.collection('campaigns').get();
    return snapshot.docs
        .map((doc) => CampaignModel(
              id: doc.id,
              title: doc['title'],
              description: doc['description'],
              targetAmount: doc['targetAmount'],
              currentAmount: doc['currentAmount'],
            ))
        .toList();
  }

  Future<void> addCampaign(CampaignModel campaign) async {
    await _firestore.collection('campaigns').add({
      'title': campaign.title,
      'description': campaign.description,
      'targetAmount': campaign.targetAmount,
      'currentAmount': campaign.currentAmount,
    });
  }
}
