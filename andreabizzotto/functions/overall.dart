void main() {
  const emails = [
    'abc@flutterdev.com',
    'argel@flutter.io',
    'anya@flutterdeveloper.io',
    'arguelles@flutterdev.com',
    'maria@googledev.com',
  ];
  const knownDomains = ['flutterdev.com', 'googledev.com'];
  final unknownDomains = getUnknownDomains(emails, knownDomains);
  print(unknownDomains);
}

Iterable<String> getUnknownDomains(
        List<String> emails, List<String> knownDomains) =>
    emails
        .map((email) => email.split('@').last)
        .where((domain) => !knownDomains.contains(domain));
