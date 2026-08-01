void execuit(Function function){
  function();
}
void main(){
  execuit((){print("Hello Dart!");});
}