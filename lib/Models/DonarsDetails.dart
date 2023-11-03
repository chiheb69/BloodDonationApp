class DonorDetails{
  String Name;
  String Place;
  String image;
  String BloodGroup;
  int TimeDonated;
  int Requested;
  int PhoneNumber;

  DonorDetails({
    required this.Name,
    required this.Place,
    required this.image,
    required this.BloodGroup,
    required this.TimeDonated,
    required this.Requested,
    required this.PhoneNumber,

  });
}




List<DonorDetails> DonorsList = [
  DonorDetails(
      Name: 'Amir Trigui',
      Place: 'Sfax',
      image: 'images/DonorProfileImage/1.jpg',
      BloodGroup: 'A+',
    TimeDonated: 3,
    Requested: 4,
    PhoneNumber: 12345678,
  ),
  DonorDetails(
      Name: 'Hani Berriche',
      Place: 'Teboulba',
    image: 'images/DonorProfileImage/2.jpg',
    BloodGroup: 'AB+',
    TimeDonated: 6,
    Requested: 2,
    PhoneNumber: 12345678,
  ),
  DonorDetails(
      Name: 'Ghazi Maaref',
      Place: 'Teboulba',
      image: 'images/DonorProfileImage/3.jpg',
      BloodGroup: 'B-',
    TimeDonated: 1,
    Requested: 3,
    PhoneNumber: 12345678,
  ),
  DonorDetails(
      Name: 'Bilel Elloumi',
      Place: 'Sfax',
      image: 'images/DonorProfileImage/4.jpg',
      BloodGroup: 'O+',
    TimeDonated: 0,
    Requested: 6,
    PhoneNumber: 12345678,
  ),

];