class Student
{
  int _id=11123;

  set id(int _id)
  {
    this._id=_id;
  }

  int get id=>_id;

  void read()
  {
    print("Reading : $_id");
  }
}



void main()
{
  Student sam= Student();
  sam.id=2344;
  var getId=sam.id;
  sam.read();
}