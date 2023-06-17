class ToDo {
  String? id;
  String? toDoText;
  bool isDone;

  ToDo({required this.id, required this.toDoText, this.isDone = false});
  static List<ToDo> toDoList() {
    return [
      ToDo(
        id: '01',
        toDoText: 'Morning Walk',
        isDone: true,
      ),
      ToDo(
        id: '02',
        toDoText: 'Namaz',
        isDone: true,
      ),
      ToDo(
        id: '03',
        toDoText: 'Gym',
        isDone: false,
      ),
      ToDo(
        id: '04',
        toDoText: 'Flutter',
        isDone: false,
      ),
      ToDo(
        id: '05',
        toDoText: 'Bath',
        isDone: false,
      ),
      ToDo(
        id: '06',
        toDoText: 'Learn',
        isDone: false,
      )
    ];
  }
}
