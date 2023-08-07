part of todos;

class _TodosCard extends StatelessWidget {
  final String id;
  final String userId;
  final String title;
  final bool completed;

  const _TodosCard(
      {required this.id,
      required this.userId,
      required this.title,
      required this.completed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _title("id : $id"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _title("UserId : $userId"),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                height: 16,
              ),
              Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _title("Title : $title"),
                  ),
                  const SizedBox(width: 2,),
                ],
              ),
              Container(
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _completed(completed),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _completed(completed) {
    if (completed) {
      return _title('Status : YES');
    } else {
      return _title('Status : NO');
    }
  }

  Widget _title(String value) {
    return Text(
      value,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

 /* Widget _seeAllButton({required Function() onPressed}) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(foregroundColor: Colors.blue),
      child: const Text("See All"),
    );
  }*/
}
