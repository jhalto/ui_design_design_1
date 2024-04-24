class DetailsModel{

  String logoUrl;
  String company;
  String title;
  String location;
  String fullTime;
  List<String> req;

  DetailsModel(
    this.logoUrl,this.company,this.title,this.location,this.fullTime,this.req,
);

  static List<DetailsModel> myList(){
    return [
      DetailsModel('lib/images/google-logo.png',"Google LLC",'Product Design','217 fourteen street,texas,United State','Fulltime',
         [
            'In the begining of time'
            'Life is too sort\n to live',
           'In the begining of time'
           'Life is too sort\n to live',
           'In the begining of time'
           'Life is too sort\n to live',
           'In the begining of time'
               'Life is too sort\n to live',
           'In the begining of time'
               'Life is too sort\n to live',
         ]
      ),
      DetailsModel('lib/images/google-logo-2020.jpg',"Google LLC",'Product Design','217 fourteen street,texas,United State','Fulltime',
          [
            'In the begining of time'
                'Life is too sort\n to live',
            'In the begining of time'
                'Life is too sort\n to live',
            'In the begining of time'
                'Life is too sort\n to live',
            'In the begining of time'
                'Life is too sort\n to live',
            'In the begining of time'
                'Life is too sort\n to live',
          ]
      ),
      DetailsModel('lib/images/google-logo.png',"Google LLC",'Product Design','217 fourteen street,texas,United State','Full time',
          [
            'In the begining of time'
                'Life is too sort\n to live',
            'In the begining of time'
                'Life is too sort\n to live',
            'In the begining of time'
                'Life is too sort\n to live',
            'In the begining of time'
                'Life is too sort\n to live',
            'In the begining of time'
                'Life is too sort\n to live',
          ]
      ),

    ];
  }


}
