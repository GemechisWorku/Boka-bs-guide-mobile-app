//  fetchFileData()async {
//     String responseString,data;
//     responseString = await rootBundle.loadString('$_path');

//     setState(() {
//      data = responseString; 
//     });
//     _Home(data);
//   }
//   @override
//   void initState() {
//     fetchFileData();
//     super.initState();
//   }
//   void navigateToDetail() async{
//     bool result = await Navigator.push(context, MaterialPageRoute(builder: (context){
//       return BsDetail();
//     }));
//   }