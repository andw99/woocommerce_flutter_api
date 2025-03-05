import 'package:woocommerce_flutter_api/src/helpers/fake_helper.dart';

class WooProductShippingClass {
  /// Unique identifier for the resource.
  final int? id;

  ///	Shipping class name.
  final String? name;

  ///	An alphanumeric identifier for the resource unique to its type.
  final String? slug;

  ///	HTML description of the resource.
  final String? description;

  ///	Number of published products for the resource.
  final int? count;

  WooProductShippingClass(
      this.id, this.name, this.slug, this.description, this.count);

  WooProductShippingClass.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        slug = json['slug'],
        description = json['description'],
        count = json['count'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'description': description,
        'count': count,
      };

  factory WooProductShippingClass.fake([int? id]) => WooProductShippingClass(
        id ?? FakeHelper.integer(),
        FakeHelper.word(),
        FakeHelper.word(),
        FakeHelper.sentence(),
        FakeHelper.integer(),
      );
}
