import 'package:flutter/material.dart';
import 'package:charify/models/campaign_model.dart'; // Import the CampaignModel class
import 'package:charify/utils/constants.dart';
import 'package:charify/screens/campaigns_screen.dart'; // Import the CampaignsScreen class

class CampaignCard extends StatelessWidget {
  final CampaignModel campaign;

  CampaignCard({required this.campaign});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(campaign.title),
        subtitle: Text(campaign.description),
        trailing: ElevatedButton(
          onPressed: () {
            // Implement the donation functionality here
            // You can navigate to a donation screen or show a dialog for donation options
          },
          style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
          child: Text('Donate'),
        ),
      ),
    );
  }
}
