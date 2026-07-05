class Adventure {
  const Adventure({
    required this.id,
    required this.title,
    required this.worldIds,
  });

  final String id;
  final String title;
  final List<String> worldIds;
}
