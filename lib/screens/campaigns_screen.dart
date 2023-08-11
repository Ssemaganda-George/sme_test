import 'package:flutter/material.dart';
import 'package:charify/widgets/main_drawer.dart'; // Import your MainDrawer widget
import 'package:charify/models/campaign_model.dart'; // Import the CampaignModel
import 'package:charify/screens/create_campaign_screen.dart'; // Import the CreateCampaignScreen
import 'package:charify/services/database_service.dart'; // Import the DatabaseService
import 'package:charify/utils/constants.dart';

class CampaignsScreen extends StatefulWidget {
  @override
  _CampaignsScreenState createState() => _CampaignsScreenState();
}

class _CampaignsScreenState extends State<CampaignsScreen> {
  final _databaseService = DatabaseService();
  late Future<List<CampaignModel>> _campaignsFuture;

  @override
  void initState() {
    super.initState();
    _campaignsFuture = _databaseService.getCampaigns();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campaigns'),
      ),
      drawer: MainDrawer(), // Use your MainDrawer widget here
      body: FutureBuilder<List<CampaignModel>>(
        future: _campaignsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No campaigns available.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                CampaignModel campaign = snapshot.data![index];
                return ListTile(
                  title: Text(campaign.title),
                  subtitle: Text(campaign.description),
                  trailing: Text('Target: \$${campaign.targetAmount.toStringAsFixed(2)}'),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateCampaignScreen()));
        },
        child: Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
