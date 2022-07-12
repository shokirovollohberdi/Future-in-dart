void main() {
  /*
  Future.delayed(Duration(seconds:3),(){
    print("hi after 3 second");
  });
  print("hello out future");
  for(int i=1;i<10;i++){
    Future.delayed(Duration(seconds:i),(){
      print("i = $i");
    });
  }
*/

  Future<String> resultFuture = download();
  resultFuture.then((value){
    print("result of download $value");
  });
  
}
Future<String> download() async{
  print("start downloading");
  await Future.delayed(Duration(seconds:5));
  print("image have downloaded");

  return "Successful";
}
