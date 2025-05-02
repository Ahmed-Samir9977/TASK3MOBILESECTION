class MobilePhone {
  final String brand;
  final String model;
  final int? storage;
  final double price;
  final String serialNumber;

  MobilePhone({
    required this.brand,
    required this.model,
    this.storage,
    this.price = 0.0,
    required this.serialNumber,
  });

  MobilePhone.withDefaultStorage({
    required this.brand,
    required this.model,
    int? storage,
    this.price = 0.0,
    required this.serialNumber,
  }) : storage = storage ?? 64;

  const MobilePhone.constant({
    required this.brand,
    required this.model,
    this.storage,
    this.price = 0.0,
    required this.serialNumber,
  });

  @override
  String toString() {
    return 'MobilePhone{brand: $brand, model: $model, storage: ${storage ?? "unknown"}GB, price: \$$price, serialNumber: $serialNumber}';
  }

  MobilePhone copyWith({
    String? brand,
    String? model,
    int? storage,
    double? price,
    String? serialNumber,
  }) {
    return MobilePhone(
      brand: brand ?? this.brand,
      model: model ?? this.model,
      storage: storage ?? this.storage,
      price: price ?? this.price,
      serialNumber: serialNumber ?? this.serialNumber,
    );
  }
}