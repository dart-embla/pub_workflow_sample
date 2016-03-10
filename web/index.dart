import 'dart:html';
import 'dart:convert' show JSON;

main() async {
  final UListElement todosContainer = querySelector('.todos');

  final List<Map> todos = await HttpRequest
    .getString('/todos')
    .then(JSON.decode);

  for (final todo in todos) {
    final li = new LIElement()
      ..text = todo['title'];

    if (todo['completed']) {
      li.style.textDecoration = 'line-through';
    }

    todosContainer.append(li);
  }
}
