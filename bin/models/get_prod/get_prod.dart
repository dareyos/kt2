import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'get_prod.freezed.dart';
part 'get_prod.g.dart';

@freezed
class GetProd with _$GetProd {

  factory GetProd({
     @Default([]) List<Cars> cars,
  }) = _GetProd;

  factory GetProd.fromJson(Map<String, dynamic> json) => _$GetProdFromJson(json);
}