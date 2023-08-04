part of home;

class _ActiveProjectCard extends StatelessWidget {
  final String id;
  final String username;
  final String email;
  final String website;

  const _ActiveProjectCard(
      {
      required this.id,
      required this.username,
      required this.email,
      required this.website});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _title(id as String),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _title(username),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              height: 16,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _title(email),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _title(website),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _title(String value) {
    return Text(
      value,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _seeAllButton({required Function() onPressed}) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(foregroundColor: Colors.blue),
      child: const Text("See All"),
    );
  }
}
