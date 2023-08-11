import 'package:flutter/material.dart';
import 'package:charify/components/rounded_input_field.dart'; // Import your input field widget
import 'package:charify/components/rounded_button.dart'; // Import your button widget
import 'package:charify/utils/constants.dart';
import 'package:charify/services/database_service.dart'; // Import the DatabaseService
import 'package:charify/models/campaign_model.dart'; // Import the CampaignModel

class CreateCampaignScreen extends StatefulWidget {
  @override
  _CreateCampaignScreenState createState() => _CreateCampaignScreenState();
}

class _CreateCampaignScreenState extends State<CreateCampaignScreen> {
  final _formKey = GlobalKey<FormState>();
  final _databaseService = DatabaseService();

  String _title = '';
  String _description = '';
  double _targetAmount = 0;

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Create a new campaign using the entered details
      CampaignModel newCampaign = CampaignModel(
        id: '', // Generate a unique ID for the campaign
        title: _title,
        description: _description,
        targetAmount: _targetAmount,
        currentAmount: 0, // Initial current amount is 0
      );

      // Add the new campaign to the database
      await _databaseService.addCampaign(newCampaign);

      Navigator.pop(context); // Navigate back to previous screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Campaign'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              RoundedInputField(
                hintText: 'Title',
                onChanged: (value) => _title = value,
              ),
              RoundedInputField(
                hintText: 'Description',
                onChanged: (value) => _description = value,
              ),
              RoundedInputField(
                hintText: 'Target Amount',
                keyboardType: TextInputType.number,
                onChanged: (value) => _targetAmount = double.parse(value),
              ),
              SizedBox(height: 16),
              RoundedButton(
                text: 'Create Campaign',
                color: kPrimaryColor,
                textColor: Colors.white,
                press: _submitForm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
