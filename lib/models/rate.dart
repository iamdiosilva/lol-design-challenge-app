class Rate {
  final String id;
  final int dddOrigin;
  final int dddDestiny;
  final double pricePerMinute;

  Rate({
    required this.id,
    required this.dddOrigin,
    required this.dddDestiny,
    required this.pricePerMinute,
  });

  factory Rate.fromJson(Map<String, dynamic> json) => Rate(
        id: json['id'],
        dddOrigin: json['dddOrigin'].toInt(),
        dddDestiny: (json['dddDestiny']).toInt(),
        pricePerMinute: (json['pricePerMinute']).toDouble(),
      );
}
