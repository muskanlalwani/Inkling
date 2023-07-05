class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}

List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Create Notes',
    content:
        'A FREE way to express your thoughts or cumulate important points.',
    modifiedTime: DateTime(2022, 1, 1, 34, 5),
  ),
  Note(
    id: 2,
    title: 'New Content Writing Journalising app',
    content:
        'Get suggestions topics to start your jounalising habit with new feature in the app',
    modifiedTime: DateTime(2023, 1, 4, 16, 53),
  ),
  Note(
    id: 3,
    title: 'Contributor',
    content: 'I ,muskanlalwani, built this app using flutter.',
    modifiedTime: DateTime(2023, 7, 5, 15, 38),
  ),
  Note(
    id: 4,
    title: 'Workout Plan',
    content: '',
    modifiedTime: DateTime(2023, 5, 1, 11, 6),
  ),
  Note(
    id: 5,
    title: 'Meeting Notes',
    content: '',
    modifiedTime: DateTime(2023, 2, 1, 15, 14),
  ),
  Note(
    id: 6,
    title: 'Ideas for Vacation',
    content: '',
    modifiedTime: DateTime(2023, 2, 1, 12, 34),
  ),
];
