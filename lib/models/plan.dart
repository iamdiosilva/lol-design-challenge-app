class Plan {
  final String id;
  final String name;
  final double tax;
  final double time;

  Plan({
    required this.id,
    required this.name,
    required this.tax,
    required this.time,
  });

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
        id: json['id'],
        name: json['name'],
        tax: (json['tax']).toDouble(),
        time: (json['time']).toDouble(),
      );
}
