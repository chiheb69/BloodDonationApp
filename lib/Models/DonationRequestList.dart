class DonationRequest{
  String name;
  String location;
  String bloodGroupType;
  int time;
  DonationRequest({required this.name,required this.location,required this.bloodGroupType, required this.time,});
}

List<DonationRequest> donationRequestList = [
  
  DonationRequest(
      name: 'Chadi Kammoun',
      location: 'Teboulba Hospital',
      bloodGroupType: 'B+',
      time: 5),
  DonationRequest(
      name: 'Chahine Kammoun',
      location: 'Teboulba Hospital',
      bloodGroupType: 'B+',
      time: 16),
  DonationRequest(
      name: 'Wajdi Belkacem',
      location: 'Teboulba Hospital',
      bloodGroupType: 'B+',
      time: 20),
  DonationRequest(
      name: 'Badr Aydi',
      location: 'Sfax Hospital',
      bloodGroupType: 'B+',
      time: 10),
];