class ToDoModelClass {
  int id;
  String title;
  String description;
  String date;
  ToDoModelClass({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
  });

  Map<String,dynamic>todoMap(){
    return {
        'id':id,
        'title':title,
        'description':description,
        'date':date,
    };
  }

    @override
    String toString(){
        return "{ Id: $id ,Title : $title, Description: $description, date: $date}";
    }
}
