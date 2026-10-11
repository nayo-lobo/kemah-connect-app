import '../utils/currency_formatter.dart';

extension DoubleExtension on double {
  String toRupiah() => CurrencyFormatter.toRupiah(this);
}
