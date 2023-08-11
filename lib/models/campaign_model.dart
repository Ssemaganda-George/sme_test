class CampaignModel {
  final String id;
  final String title;
  final String description;
  final double targetAmount;
  final double currentAmount;

  CampaignModel({
    required this.id,
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.currentAmount,
  });
}
