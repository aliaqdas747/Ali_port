 class CustomException implements Exception{
  String cause;

  CustomException(this.cause);
 }
 void main(){
  try{
    throw CustomException('This is the Custom Exception ');

  }on CustomException catch(e){
    print('Caugh a custom exception:${e.cause}');

  }catch (e){
    print('An error occured:$e');
  }finally{
    print('final block');
  } }