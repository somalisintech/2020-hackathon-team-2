// History stores our navigation through screens
// It stores a queue of a fixed size
class History {
  int size;
  List<String> queue;

  History({this.size}) {
    queue = List<String>(size);
  }

  // Previous returns the first element in the queue
  String Previous() {
    if (queue.length > 0) {
      return Pop(0);
    }
    return "";
  }

  // Pop removes an element at index from queue
  // then returns the element removed
  String Pop(int index) {
    queue.removeAt(index);
  }

  // Adds an element to queue
  String Add(String uuid) {
    queue.add(uuid);
  }

  // Home returns the first element added to queue
  String Home() {
    return queue.last;
  }
}
